class SessionController < ApplicationController
 def new
 end
 def create
  @user = User.find_by email: params[:email]
    if !@user
      flash.now.alert = "email #{params[:email]} was invalid"
      render :new
    elsif @user.password == params[:password]
        session[:user_id] = @user.id
        redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "password was invalid"
      render :new
    end
  end
 def destroy
  session[:user_id] = nil
  redirect_to visitors_path, :notice => "Logged out!"
 end
end