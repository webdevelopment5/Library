class WelcomeController < ApplicationController
before_filter :authenticate_user!
  
  def index
    @current_user = User.find(session[:user_id])
    if @current_user.role == 'manager'
      render "/welcome/menuManager"
    elsif @current_user.role == 'admin'
      render "/welcome/menuAdmin"
      #redirect_to :action => "show"
    elsif @current_user.role == 'reader'
      #flash.now.notice = "Hi, reader!"
      render "/welcome/menuReader"
    end
  end

 
  
end
