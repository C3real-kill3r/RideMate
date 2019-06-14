require 'test_helper'

class RidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ride = rides(:one)
  end

  test "should create ride" do
    post '/users/298486374/rides', params: { ride: { origin: @ride.origin, destination: @ride.destination, take_off: @ride.take_off, capacity: @ride.capacity } }
    assert_redirected_to '/users.298486374'
  end

  test "should delete ride" do
    delete '/users/298486374/rides/298486374'
    assert_redirected_to '/users'
  end
end