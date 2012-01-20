require 'test_helper'

class AkuponsControllerTest < ActionController::TestCase
  setup do
    @akupon = akupons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:akupons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create akupon" do
    assert_difference('Akupon.count') do
      post :create, akupon: @akupon.attributes
    end

    assert_redirected_to akupon_path(assigns(:akupon))
  end

  test "should show akupon" do
    get :show, id: @akupon.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @akupon.to_param
    assert_response :success
  end

  test "should update akupon" do
    put :update, id: @akupon.to_param, akupon: @akupon.attributes
    assert_redirected_to akupon_path(assigns(:akupon))
  end

  test "should destroy akupon" do
    assert_difference('Akupon.count', -1) do
      delete :destroy, id: @akupon.to_param
    end

    assert_redirected_to akupons_path
  end
end
