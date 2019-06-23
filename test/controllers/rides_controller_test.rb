require 'test_helper'

class RidesControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @ride = rides(:one)
    log_in_as @user
  end

  test "should create ride" do
    post :create , params: { use_route: "/users/:user_id/rides", user_id: @user.id, ride: {origin: @ride.origin, destination: @ride.destination, take_off: @ride.take_off, capacity: @ride.capacity }}
    assert_redirected_to "/users/#{@user.id}"
  end

  test "should delete ride" do
    delete :destroy, params: {use_route: "/users/:user_id/rides/:id", user_id: @user.id, id: @ride.id}
    assert_redirected_to '/users'
  end

  test "should request ride" do
    get :request_ride, params: {use_route: "/:id/request", id: @ride.id}
    assert_redirected_to "/users.#{@user.id}"
  end

  test "should cancel request" do
    get :cancel_request, params: {use_route: "/:id/cancel", id: @ride.id}
    assert_redirected_to "/users.#{@user.id}"
  end
end