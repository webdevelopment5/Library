class LogloansController < ApplicationController
  before_action :set_logloan, only: [ :show, :edit, :update, :destroy]

  # GET /logloans
  # GET /logloans.json
  def index
    @logloans = Logloan.all
  end

  # GET /logloans/1
  # GET /logloans/1.json
  def show
  end

  # GET /logloans/new
  def new
    @logloan = Logloan.new
  end

  # GET /logloans/1/edit
  def edit
  end

  # POST /logloans
  # POST /logloans.json
  def create
    @logloan = Logloan.new(logloan_params)

    respond_to do |format|
      if @logloan.save
        format.html { redirect_to @logloan, notice: 'Logloan was successfully created.' }
        format.json { render :show, status: :created, location: @logloan }
      else
        format.html { render :new }
        format.json { render json: @logloan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logloans/1
  # PATCH/PUT /logloans/1.json
  def update
    respond_to do |format|
      if @logloan.update(logloan_params)
        format.html { redirect_to @logloan, notice: 'Logloan was successfully updated.' }
        format.json { render :show, status: :ok, location: @logloan }
      else
        format.html { render :edit }
        format.json { render json: @logloan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logloans/1
  # DELETE /logloans/1.json
  def destroy
    @logloan.destroy
    respond_to do |format|
      format.html { redirect_to logloans_url, notice: 'Logloan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logloan
      @logloan = Logloan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logloan_params
      params.require(:logloan).permit(:user_id, :book_id, :physical, :loandate, :loanreturn)
    end
end
