require 'test_helper'

class AimagensControllerTest < ActionController::TestCase
  setup do
    @aimagen = aimagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aimagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aimagen" do
    assert_difference('Aimagen.count') do
      post :create, aimagen: { direccion: @aimagen.direccion, galeria: @aimagen.galeria }
    end

    assert_redirected_to aimagen_path(assigns(:aimagen))
  end

  test "should show aimagen" do
    get :show, id: @aimagen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aimagen
    assert_response :success
  end

  test "should update aimagen" do
    put :update, id: @aimagen, aimagen: { direccion: @aimagen.direccion, galeria: @aimagen.galeria }
    assert_redirected_to aimagen_path(assigns(:aimagen))
  end

  test "should destroy aimagen" do
    assert_difference('Aimagen.count', -1) do
      delete :destroy, id: @aimagen
    end

    assert_redirected_to aimagens_path
  end
end
