class LoansController < ApplicationController
  before_action :set_loan, only: [:show, :edit, :update, :destroy]
 respond_to :html
  # GET /loans
  # GET /loans.json
  def index
    @current_user = User.find(session[:user_id])
    
    @loans = Loan.all
  end

  # GET /loans/1
  # GET /loans/1.json
  def show
  end

  # GET /loans/new
  def new
    @books = Book.all
    @book = params[:book_id]
    @physical = params[:physical]
    @loan = Loan.new
    @users = User.where(:role => "reader")
  end

  # GET /loans/1/edit
  def edit
  end

  # POST /loans
  # POST /loans.json
  def create
    @loan = Loan.new(loan_params)
 @book = Book.find_by( params[:book_id] )
=begin puts @book
    @ejemplo = params[:user]
    @loan = Loan.new
    @loan.book = Book.find_by(@book)
    @loan.user = User.find_by(id: params[:user])
    @loan.physical = @physical
    @loan.loandate = params[:loandate]
    @loan.loanreturn = params[:loanreturn]

 
 
 if @book.physical? and Loan.where(:book => @book).present?
    #@book.loaned = true
    #@book.save
    redirect_to books_path, alert: 'Physical book already loaned'
  else
  
=end
    respond_to do |format|
      if @loan.save
        format.html { redirect_to @loan, notice: 'Book successfully borrowed' }
        format.json { render :show, status: :created, location: @loan }
      else
        format.html { redirect_to books_path, alert: 'Book not available' }
      end
    end
  end

  # PATCH/PUT /loans/1
  # PATCH/PUT /loans/1.json
  def update
    respond_to do |format|
      if @loan.update(loan_params)
        format.html { redirect_to @loan, notice: 'Loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan }
      else
        format.html { render :edit }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loans/1
  # DELETE /loans/1.json
  def destroy
    
    @loan.destroy
    
    @loan1 = Loan.find_by(params[:id]) # find original object
    
     
    @logLoans = LogLoan.new(@loan1.attributes)
    @logLoans.save
=begin @loan = Loan.find_by(params[:id])
    @book = Book.find_by(@loan.book_id)
    @book.loaned = false
 @book.save
=end
     redirect_to loans_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan
      @loan = Loan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_params
      params.require(:loan).permit(:user_id, :book_id, :physical, :loandate, :loanreturn, :loaned)
    end
end
