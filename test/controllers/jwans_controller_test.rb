require 'test_helper'

class JwansControllerTest < ActionController::TestCase
  setup do
    @jwan = jwans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jwans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jwan" do
    assert_difference('Jwan.count') do
      post :create, jwan: {  }
    end

    assert_redirected_to jwan_path(assigns(:jwan))
  end

  test "should show jwan" do
    get :show, id: @jwan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jwan
    assert_response :success
  end

  test "should update jwan" do
    patch :update, id: @jwan, jwan: {  }
    assert_redirected_to jwan_path(assigns(:jwan))
  end

  test "should destroy jwan" do
    assert_difference('Jwan.count', -1) do
      delete :destroy, id: @jwan
    end

    assert_redirected_to jwans_path
  end
end
