require 'test_helper'

class UserlooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userlook = userlooks(:one)
  end

  test "should get index" do
    get userlooks_url, as: :json
    assert_response :success
  end

  test "should create userlook" do
    assert_difference('Userlook.count') do
      post userlooks_url, params: { userlook: { looks_id: @userlook.looks_id, user_id: @userlook.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show userlook" do
    get userlook_url(@userlook), as: :json
    assert_response :success
  end

  test "should update userlook" do
    patch userlook_url(@userlook), params: { userlook: { looks_id: @userlook.looks_id, user_id: @userlook.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy userlook" do
    assert_difference('Userlook.count', -1) do
      delete userlook_url(@userlook), as: :json
    end

    assert_response 204
  end
end
