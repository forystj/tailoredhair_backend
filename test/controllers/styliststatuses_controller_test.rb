require 'test_helper'

class StyliststatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @styliststatus = styliststatuses(:one)
  end

  test "should get index" do
    get styliststatuses_url, as: :json
    assert_response :success
  end

  test "should create styliststatus" do
    assert_difference('Styliststatus.count') do
      post styliststatuses_url, params: { styliststatus: { stylist_id: @styliststatus.stylist_id, user_id: @styliststatus.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show styliststatus" do
    get styliststatus_url(@styliststatus), as: :json
    assert_response :success
  end

  test "should update styliststatus" do
    patch styliststatus_url(@styliststatus), params: { styliststatus: { stylist_id: @styliststatus.stylist_id, user_id: @styliststatus.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy styliststatus" do
    assert_difference('Styliststatus.count', -1) do
      delete styliststatus_url(@styliststatus), as: :json
    end

    assert_response 204
  end
end
