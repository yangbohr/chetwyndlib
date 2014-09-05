require 'test_helper'

class DrawingsControllerTest < ActionController::TestCase
  setup do
    @drawing = drawings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drawings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drawing" do
    assert_difference('Drawing.count') do
      post :create, drawing: { cad: @drawing.cad, date: @drawing.date, discipline: @drawing.discipline, equipment_number: @drawing.equipment_number, hanging: @drawing.hanging, notes: @drawing.notes, order: @drawing.order, paper: @drawing.paper, revision: @drawing.revision, sheet_number: @drawing.sheet_number, tembec_drawing: @drawing.tembec_drawing, title: @drawing.title, vender: @drawing.vender, vendor_drawing_number: @drawing.vendor_drawing_number }
    end

    assert_redirected_to drawing_path(assigns(:drawing))
  end

  test "should show drawing" do
    get :show, id: @drawing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drawing
    assert_response :success
  end

  test "should update drawing" do
    patch :update, id: @drawing, drawing: { cad: @drawing.cad, date: @drawing.date, discipline: @drawing.discipline, equipment_number: @drawing.equipment_number, hanging: @drawing.hanging, notes: @drawing.notes, order: @drawing.order, paper: @drawing.paper, revision: @drawing.revision, sheet_number: @drawing.sheet_number, tembec_drawing: @drawing.tembec_drawing, title: @drawing.title, vender: @drawing.vender, vendor_drawing_number: @drawing.vendor_drawing_number }
    assert_redirected_to drawing_path(assigns(:drawing))
  end

  test "should destroy drawing" do
    assert_difference('Drawing.count', -1) do
      delete :destroy, id: @drawing
    end

    assert_redirected_to drawings_path
  end
end
