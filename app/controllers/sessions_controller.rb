class SessionsController < ApplicationController
  def new
   
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password]) 
      log_in @user
      remember @user
      current_user=(@user)
      redirect_to posts_path
    else                    
      render 'new'
    end
  end

  def destroy 
    log_out
    redirect_to login_url
  end

end
