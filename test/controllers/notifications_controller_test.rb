require 'test_helper'

class NotificationsControllerTest < ActionController::TestCase
  setup do
    @notification = notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notification" do
    assert_difference('Notification.count') do
      post :create, params: { notification: { body: @notification.body, name: @notification.name } }
    end

    assert_redirected_to notification_path(assigns(:notification))
  end

  test "should show notification" do
    get :show, params: { id: @notification }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @notification }
    assert_response :success
  end

  test "should update notification" do
    patch :update, params: { id: @notification, notification: { body: @notification.body, name: @notification.name } }
    assert_redirected_to notification_path(assigns(:notification))
  end

  test "should destroy notification" do
    assert_difference('Notification.count', -1) do
      delete :destroy, params: { id: @notification }
    end

    assert_redirected_to notifications_path
  end
end
