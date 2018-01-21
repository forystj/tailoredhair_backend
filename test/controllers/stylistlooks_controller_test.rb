require 'test_helper'

class StylistlooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stylistlook = stylistlooks(:one)
  end

  test "should get index" do
    get stylistlooks_url, as: :json
    assert_response :success
  end

  test "should create stylistlook" do
    assert_difference('Stylistlook.count') do
      post stylistlooks_url, params: { stylistlook: { look_id: @stylistlook.look_id, stylist_id: @stylistlook.stylist_id } }, as: :json
    end

    assert_response 201
  end

  test "should show stylistlook" do
    get stylistlook_url(@stylistlook), as: :json
    assert_response :success
  end

  test "should update stylistlook" do
    patch stylistlook_url(@stylistlook), params: { stylistlook: { look_id: @stylistlook.look_id, stylist_id: @stylistlook.stylist_id } }, as: :json
    assert_response 200
  end

  test "should destroy stylistlook" do
    assert_difference('Stylistlook.count', -1) do
      delete stylistlook_url(@stylistlook), as: :json
    end

    assert_response 204
  end
end
