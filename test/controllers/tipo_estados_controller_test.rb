require 'test_helper'

class TipoEstadosControllerTest < ActionController::TestCase
  setup do
    @tipo_estado = tipo_estados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_estados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_estado" do
    assert_difference('TipoEstado.count') do
      post :create, tipo_estado: { descripcion: @tipo_estado.descripcion, nombre: @tipo_estado.nombre }
    end

    assert_redirected_to tipo_estado_path(assigns(:tipo_estado))
  end

  test "should show tipo_estado" do
    get :show, id: @tipo_estado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_estado
    assert_response :success
  end

  test "should update tipo_estado" do
    patch :update, id: @tipo_estado, tipo_estado: { descripcion: @tipo_estado.descripcion, nombre: @tipo_estado.nombre }
    assert_redirected_to tipo_estado_path(assigns(:tipo_estado))
  end

  test "should destroy tipo_estado" do
    assert_difference('TipoEstado.count', -1) do
      delete :destroy, id: @tipo_estado
    end

    assert_redirected_to tipo_estados_path
  end
end
