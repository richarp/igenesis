require 'test_helper'

class PredicasControllerTest < ActionController::TestCase
  setup do
    @predica = predicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:predicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create predica" do
    assert_difference('Predica.count') do
      post :create, predica: { autor: @predica.autor, mensaje: @predica.mensaje, titulo: @predica.titulo }
    end

    assert_redirected_to predica_path(assigns(:predica))
  end

  test "should show predica" do
    get :show, id: @predica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @predica
    assert_response :success
  end

  test "should update predica" do
    put :update, id: @predica, predica: { autor: @predica.autor, mensaje: @predica.mensaje, titulo: @predica.titulo }
    assert_redirected_to predica_path(assigns(:predica))
  end

  test "should destroy predica" do
    assert_difference('Predica.count', -1) do
      delete :destroy, id: @predica
    end

    assert_redirected_to predicas_path
  end
end
