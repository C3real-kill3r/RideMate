class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome to the Ride Mate!"
      redirect_to root_url
    else
      flash.now[:alert] = "Email or password is invalid"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged out!!"
    redirect_to root_url
  end

end
