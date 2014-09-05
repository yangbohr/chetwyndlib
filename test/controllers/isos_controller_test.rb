require 'test_helper'

class IsosControllerTest < ActionController::TestCase
  setup do
    @iso = isos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:isos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iso" do
    assert_difference('Iso.count') do
      post :create, iso: { tage: @iso.tage, title: @iso.title }
    end

    assert_redirected_to iso_path(assigns(:iso))
  end

  test "should show iso" do
    get :show, id: @iso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iso
    assert_response :success
  end

  test "should update iso" do
    patch :update, id: @iso, iso: { tage: @iso.tage, title: @iso.title }
    assert_redirected_to iso_path(assigns(:iso))
  end

  test "should destroy iso" do
    assert_difference('Iso.count', -1) do
      delete :destroy, id: @iso
    end

    assert_redirected_to isos_path
  end
end
