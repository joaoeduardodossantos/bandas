require 'test_helper'

class EstilosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estilo = estilos(:one)
  end

  test "should get index" do
    get estilos_url
    assert_response :success
  end

  test "should get new" do
    get new_estilo_url
    assert_response :success
  end

  test "should create estilo" do
    assert_difference('Estilo.count') do
      post estilos_url, params: { estilo: { nome: @estilo.nome } }
    end

    assert_redirected_to estilo_url(Estilo.last)
  end

  test "should show estilo" do
    get estilo_url(@estilo)
    assert_response :success
  end

  test "should get edit" do
    get edit_estilo_url(@estilo)
    assert_response :success
  end

  test "should update estilo" do
    patch estilo_url(@estilo), params: { estilo: { nome: @estilo.nome } }
    assert_redirected_to estilo_url(@estilo)
  end

  test "should destroy estilo" do
    assert_difference('Estilo.count', -1) do
      delete estilo_url(@estilo)
    end

    assert_redirected_to estilos_url
  end
end
