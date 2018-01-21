require 'test_helper'

class ClientstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clientstatus = clientstatuses(:one)
  end

  test "should get index" do
    get clientstatuses_url, as: :json
    assert_response :success
  end

  test "should create clientstatus" do
    assert_difference('Clientstatus.count') do
      post clientstatuses_url, params: { clientstatus: { client_id: @clientstatus.client_id, user_id: @clientstatus.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show clientstatus" do
    get clientstatus_url(@clientstatus), as: :json
    assert_response :success
  end

  test "should update clientstatus" do
    patch clientstatus_url(@clientstatus), params: { clientstatus: { client_id: @clientstatus.client_id, user_id: @clientstatus.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy clientstatus" do
    assert_difference('Clientstatus.count', -1) do
      delete clientstatus_url(@clientstatus), as: :json
    end

    assert_response 204
  end
end
