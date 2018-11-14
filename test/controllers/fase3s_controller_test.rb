require 'test_helper'

class Fase3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fase3 = fase3s(:one)
  end

  test "should get index" do
    get fase3s_url
    assert_response :success
  end

  test "should get new" do
    get new_fase3_url
    assert_response :success
  end

  test "should create fase3" do
    assert_difference('Fase3.count') do
      post fase3s_url, params: { fase3: { nome: @fase3.nome } }
    end

    assert_redirected_to fase3_url(Fase3.last)
  end

  test "should show fase3" do
    get fase3_url(@fase3)
    assert_response :success
  end

  test "should get edit" do
    get edit_fase3_url(@fase3)
    assert_response :success
  end

  test "should update fase3" do
    patch fase3_url(@fase3), params: { fase3: { nome: @fase3.nome } }
    assert_redirected_to fase3_url(@fase3)
  end

  test "should destroy fase3" do
    assert_difference('Fase3.count', -1) do
      delete fase3_url(@fase3)
    end

    assert_redirected_to fase3s_url
  end
end
