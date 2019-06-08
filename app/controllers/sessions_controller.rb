class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      render 'new', notice: 'Email or password is invalid.'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged out!!"
    redirect_to root_url
  end

end
