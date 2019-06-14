class RidesController < ApplicationController

    def create
        @user  = User.find(params[:user_id])
        @ride = @user.rides.create(params[:ride].permit(:origin, :destination, :take_off, :capacity))
        redirect_to users_path(@user)
    end

    def destroy
		@ride = Ride.find(params[:id])
		@ride.destroy
		redirect_to users_path(@user)
    end
end