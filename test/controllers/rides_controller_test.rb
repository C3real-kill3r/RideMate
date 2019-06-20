require 'test_helper'

class RidesControllerTest < ActionDispatch::IntegrationTest
  def log_in_as(user, password: 'password')
        post login_path, params: { session: { email: user.email, password: password} }
    end

  test "should create ride" do
    skip()
    @ride = rides(:one)
    setup { log_in_as 'one' }
    @request.session[:user_id] = user.id
    post '/users/298486374/rides', params: { ride: { origin: @ride.origin, destination: @ride.destination, take_off: @ride.take_off, capacity: @ride.capacity } }
    assert_redirected_to '/users.298486374'
  end

  test "should delete ride" do
    delete '/users/298486374/rides/298486374'
    assert_redirected_to '/users'
  end

  test "should request ride" do
    skip()
    get "/298486374/request", params: {request: {user_id: @user.id, ride_id: @ride.id}}
  end
end