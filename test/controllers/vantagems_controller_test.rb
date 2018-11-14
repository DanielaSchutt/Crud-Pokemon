require 'test_helper'

class VantagemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vantagem = vantagems(:one)
  end

  test "should get index" do
    get vantagems_url
    assert_response :success
  end

  test "should get new" do
    get new_vantagem_url
    assert_response :success
  end

  test "should create vantagem" do
    assert_difference('Vantagem.count') do
      post vantagems_url, params: { vantagem: { nome: @vantagem.nome } }
    end

    assert_redirected_to vantagem_url(Vantagem.last)
  end

  test "should show vantagem" do
    get vantagem_url(@vantagem)
    assert_response :success
  end

  test "should get edit" do
    get edit_vantagem_url(@vantagem)
    assert_response :success
  end

  test "should update vantagem" do
    patch vantagem_url(@vantagem), params: { vantagem: { nome: @vantagem.nome } }
    assert_redirected_to vantagem_url(@vantagem)
  end

  test "should destroy vantagem" do
    assert_difference('Vantagem.count', -1) do
      delete vantagem_url(@vantagem)
    end

    assert_redirected_to vantagems_url
  end
end
