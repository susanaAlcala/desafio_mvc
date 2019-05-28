require 'test_helper'

class EmpanadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empanada = empanadas(:one)
  end

  test "should get index" do
    get empanadas_url
    assert_response :success
  end

  test "should get new" do
    get new_empanada_url
    assert_response :success
  end

  test "should create empanada" do
    assert_difference('Empanada.count') do
      post empanadas_url, params: { empanada: { cantidad: @empanada.cantidad, ingrediente_ppal: @empanada.ingrediente_ppal, ingrediente_secundario: @empanada.ingrediente_secundario } }
    end

    assert_redirected_to empanada_url(Empanada.last)
  end

  test "should show empanada" do
    get empanada_url(@empanada)
    assert_response :success
  end

  test "should get edit" do
    get edit_empanada_url(@empanada)
    assert_response :success
  end

  test "should update empanada" do
    patch empanada_url(@empanada), params: { empanada: { cantidad: @empanada.cantidad, ingrediente_ppal: @empanada.ingrediente_ppal, ingrediente_secundario: @empanada.ingrediente_secundario } }
    assert_redirected_to empanada_url(@empanada)
  end

  test "should destroy empanada" do
    assert_difference('Empanada.count', -1) do
      delete empanada_url(@empanada)
    end

    assert_redirected_to empanadas_url
  end
end
