class RidesController < ApplicationController
    before_action :set_ride, only: [:destroy, :request_ride, :cancel_request]
    before_action :ride_params, only: [:create]
    before_action :set_user, only: [:create, :request_ride, :cancel_request]

    def create
        @ride = @user.rides.create(ride_params)
        redirect_to [@user]
    end

    def destroy
        @ride.destroy
		redirect_to users_path(@user)
    end

    def request_ride
        @ride.requests.create(user_id: @user.id)
        redirect_to users_path(@user)
    end

    def cancel_request
        Request.where(user_id: @user.id, ride_id: @ride.id).destroy_all
        redirect_to users_path(@user)
    end

    private

    def set_ride
        @ride = Ride.find(params[:id])
    end

    def ride_params
        params.require(:ride).permit(:origin, :destination, :take_off, :capacity)
    end

    def set_user
        @user  = User.find(session[:user_id])
    end

end