require 'test_helper'

class FraquezasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fraqueza = fraquezas(:one)
  end

  test "should get index" do
    get fraquezas_url
    assert_response :success
  end

  test "should get new" do
    get new_fraqueza_url
    assert_response :success
  end

  test "should create fraqueza" do
    assert_difference('Fraqueza.count') do
      post fraquezas_url, params: { fraqueza: { nome: @fraqueza.nome } }
    end

    assert_redirected_to fraqueza_url(Fraqueza.last)
  end

  test "should show fraqueza" do
    get fraqueza_url(@fraqueza)
    assert_response :success
  end

  test "should get edit" do
    get edit_fraqueza_url(@fraqueza)
    assert_response :success
  end

  test "should update fraqueza" do
    patch fraqueza_url(@fraqueza), params: { fraqueza: { nome: @fraqueza.nome } }
    assert_redirected_to fraqueza_url(@fraqueza)
  end

  test "should destroy fraqueza" do
    assert_difference('Fraqueza.count', -1) do
      delete fraqueza_url(@fraqueza)
    end

    assert_redirected_to fraquezas_url
  end
end
