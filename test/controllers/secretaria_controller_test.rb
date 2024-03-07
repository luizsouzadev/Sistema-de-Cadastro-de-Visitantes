require "test_helper"

class SecretariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @secretarium = secretaria(:one)
  end

  test "should get index" do
    get secretaria_url
    assert_response :success
  end

  test "should get new" do
    get new_secretarium_url
    assert_response :success
  end

  test "should create secretarium" do
    assert_difference("Secretarium.count") do
      post secretaria_url, params: { secretarium: { nome: @secretarium.nome } }
    end

    assert_redirected_to secretarium_url(Secretarium.last)
  end

  test "should show secretarium" do
    get secretarium_url(@secretarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_secretarium_url(@secretarium)
    assert_response :success
  end

  test "should update secretarium" do
    patch secretarium_url(@secretarium), params: { secretarium: { nome: @secretarium.nome } }
    assert_redirected_to secretarium_url(@secretarium)
  end

  test "should destroy secretarium" do
    assert_difference("Secretarium.count", -1) do
      delete secretarium_url(@secretarium)
    end

    assert_redirected_to secretaria_url
  end
end
