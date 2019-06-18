class RidesController < ApplicationController
    before_action :set_ride, only: [:destroy, :request_ride]
    before_action :ride_params, only: [:create]

    def create
        @user  = User.find(params[:user_id])
        @ride = @user.rides.create(ride_params)
        redirect_to users_path(@user)
    end

    def destroy
        @ride.destroy
		redirect_to users_path(@user)
    end

    def request_ride
        @user  = User.find(session[:user_id])
        @ride.requests.create(user_id: @user.id)
        redirect_to users_path(@user)
    end

    private

    def set_ride
        @ride = Ride.find(params[:id])
    end

    def ride_params
        params.require(:ride).permit(:origin, :destination, :take_off, :capacity)
    end

end