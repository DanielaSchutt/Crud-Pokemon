require 'test_helper'

class SegundasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @segunda = segundas(:one)
  end

  test "should get index" do
    get segundas_url
    assert_response :success
  end

  test "should get new" do
    get new_segunda_url
    assert_response :success
  end

  test "should create segunda" do
    assert_difference('Segunda.count') do
      post segundas_url, params: { segunda: { Fase: @segunda.Fase, nome: @segunda.nome } }
    end

    assert_redirected_to segunda_url(Segunda.last)
  end

  test "should show segunda" do
    get segunda_url(@segunda)
    assert_response :success
  end

  test "should get edit" do
    get edit_segunda_url(@segunda)
    assert_response :success
  end

  test "should update segunda" do
    patch segunda_url(@segunda), params: { segunda: { Fase: @segunda.Fase, nome: @segunda.nome } }
    assert_redirected_to segunda_url(@segunda)
  end

  test "should destroy segunda" do
    assert_difference('Segunda.count', -1) do
      delete segunda_url(@segunda)
    end

    assert_redirected_to segundas_url
  end
end
