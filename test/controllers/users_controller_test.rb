require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @ride = rides(:one)
    log_in_as @user
  end

  test "should get index" do
    skip()
    get :index, params: {use_route: "/users"}
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    post :create, params: {use_route:"/users", user: { bio: @user.bio, email: @user.email, password: 'secret', password_confirmation: 'secret', username: @user.username } }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { use_route: "/users/:id/edit", id: @user.id}
    assert_response :success
  end

  test "should show user" do
    get :show, params: {use_route: "/users/:id", id: @user.id}
    assert_response :success
  end

  test "should update user" do
    patch :update, params: {use_route: "/users/:id", id: @user.id, user: { bio: @user.bio, email: @user.email, password: 'secret', password_confirmation: 'secret', username: @user.username } }
    assert_response :success
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, params: {use_route: "/users/:id", id: @user.id}
    end

    assert_redirected_to users_url
  end
end
