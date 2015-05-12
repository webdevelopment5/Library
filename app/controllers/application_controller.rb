class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  
  
    protected
  def authenticate_user!
    if !session[:user_id].nil?
     
    else
      redirect_to login_path, :notice => 'You must be logged-in first'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
  
    private
  def management_user!
    if session[:user_id].nil?
      redirect_to login_path, :notice => 'You must be logged-in first'
      
    else
      @current_user = User.find_by(id: session[:user_id])
      
      if @current_user.role == 'reader'
         redirect_to root_path, :notice => 'you don\'t have access to this url' 
       
        
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
  end
  def log_in(user)
    session[:user] = user
  end

  # Returns the current logged-in user (if any).

  
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
  # Returns true if the user is logged in, false otherwise.
 def logged_in
    !session[:user_id].nil?
  end
  helper_method :current_user
end
