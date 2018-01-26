require 'test_helper'

class UserslooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userslook = userslooks(:one)
  end

  test "should get index" do
    get userslooks_url, as: :json
    assert_response :success
  end

  test "should create userslook" do
    assert_difference('Userslook.count') do
      post userslooks_url, params: { userslook: { look_id: @userslook.look_id, user_id: @userslook.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show userslook" do
    get userslook_url(@userslook), as: :json
    assert_response :success
  end

  test "should update userslook" do
    patch userslook_url(@userslook), params: { userslook: { look_id: @userslook.look_id, user_id: @userslook.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy userslook" do
    assert_difference('Userslook.count', -1) do
      delete userslook_url(@userslook), as: :json
    end

    assert_response 204
  end
end
