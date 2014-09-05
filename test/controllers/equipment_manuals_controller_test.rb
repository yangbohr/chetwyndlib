require 'test_helper'

class EquipmentManualsControllerTest < ActionController::TestCase
  setup do
    @equipment_manual = equipment_manuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment_manuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment_manual" do
    assert_difference('EquipmentManual.count') do
      post :create, equipment_manual: { company: @equipment_manual.company, equipment_number: @equipment_manual.equipment_number, model: @equipment_manual.model, title: @equipment_manual.title }
    end

    assert_redirected_to equipment_manual_path(assigns(:equipment_manual))
  end

  test "should show equipment_manual" do
    get :show, id: @equipment_manual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment_manual
    assert_response :success
  end

  test "should update equipment_manual" do
    patch :update, id: @equipment_manual, equipment_manual: { company: @equipment_manual.company, equipment_number: @equipment_manual.equipment_number, model: @equipment_manual.model, title: @equipment_manual.title }
    assert_redirected_to equipment_manual_path(assigns(:equipment_manual))
  end

  test "should destroy equipment_manual" do
    assert_difference('EquipmentManual.count', -1) do
      delete :destroy, id: @equipment_manual
    end

    assert_redirected_to equipment_manuals_path
  end
end
