require 'test_helper'

class Fase2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fase2 = fase2s(:one)
  end

  test "should get index" do
    get fase2s_url
    assert_response :success
  end

  test "should get new" do
    get new_fase2_url
    assert_response :success
  end

  test "should create fase2" do
    assert_difference('Fase2.count') do
      post fase2s_url, params: { fase2: { nome: @fase2.nome } }
    end

    assert_redirected_to fase2_url(Fase2.last)
  end

  test "should show fase2" do
    get fase2_url(@fase2)
    assert_response :success
  end

  test "should get edit" do
    get edit_fase2_url(@fase2)
    assert_response :success
  end

  test "should update fase2" do
    patch fase2_url(@fase2), params: { fase2: { nome: @fase2.nome } }
    assert_redirected_to fase2_url(@fase2)
  end

  test "should destroy fase2" do
    assert_difference('Fase2.count', -1) do
      delete fase2_url(@fase2)
    end

    assert_redirected_to fase2s_url
  end
end
