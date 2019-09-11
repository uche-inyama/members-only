# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user&.authenticate(params[:session][:password])
      log_in @user
      remember @user
      redirect_to posts_path
    else
      flash.now[:danger] = 'Incorrect email or password'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_url
  end
end
