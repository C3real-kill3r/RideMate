require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    get signup_path
    assert_response :success
  end

  test "should get create" do
    get login_path
    assert_response :success
  end

  test "should login user" do
    post login_path(@user)
    assert_response :success
  end

  test "should get destroy" do
    get logout_path
    assert_redirected_to root_url
  end

end
