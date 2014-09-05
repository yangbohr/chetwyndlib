require 'test_helper'

class SafetyManualsControllerTest < ActionController::TestCase
  setup do
    @safety_manual = safety_manuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:safety_manuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create safety_manual" do
    assert_difference('SafetyManual.count') do
      post :create, safety_manual: { title: @safety_manual.title }
    end

    assert_redirected_to safety_manual_path(assigns(:safety_manual))
  end

  test "should show safety_manual" do
    get :show, id: @safety_manual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @safety_manual
    assert_response :success
  end

  test "should update safety_manual" do
    patch :update, id: @safety_manual, safety_manual: { title: @safety_manual.title }
    assert_redirected_to safety_manual_path(assigns(:safety_manual))
  end

  test "should destroy safety_manual" do
    assert_difference('SafetyManual.count', -1) do
      delete :destroy, id: @safety_manual
    end

    assert_redirected_to safety_manuals_path
  end
end
