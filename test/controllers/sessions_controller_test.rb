require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get create" do
    get :new
    assert_response :success
  end

  test "should login user" do
    post :create, session: { user_id: @user.id }
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_redirected_to root_url
  end

end
