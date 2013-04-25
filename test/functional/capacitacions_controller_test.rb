require 'test_helper'

class CapacitacionsControllerTest < ActionController::TestCase
  setup do
    @capacitacion = capacitacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:capacitacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create capacitacion" do
    assert_difference('Capacitacion.count') do
      post :create, capacitacion: { descripcion: @capacitacion.descripcion, fechafinal: @capacitacion.fechafinal, fechainicio: @capacitacion.fechainicio, nombre: @capacitacion.nombre }
    end

    assert_redirected_to capacitacion_path(assigns(:capacitacion))
  end

  test "should show capacitacion" do
    get :show, id: @capacitacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @capacitacion
    assert_response :success
  end

  test "should update capacitacion" do
    put :update, id: @capacitacion, capacitacion: { descripcion: @capacitacion.descripcion, fechafinal: @capacitacion.fechafinal, fechainicio: @capacitacion.fechainicio, nombre: @capacitacion.nombre }
    assert_redirected_to capacitacion_path(assigns(:capacitacion))
  end

  test "should destroy capacitacion" do
    assert_difference('Capacitacion.count', -1) do
      delete :destroy, id: @capacitacion
    end

    assert_redirected_to capacitacions_path
  end
end
