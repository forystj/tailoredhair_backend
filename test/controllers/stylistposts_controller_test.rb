require 'test_helper'

class StylistpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stylistpost = stylistposts(:one)
  end

  test "should get index" do
    get stylistposts_url, as: :json
    assert_response :success
  end

  test "should create stylistpost" do
    assert_difference('Stylistpost.count') do
      post stylistposts_url, params: { stylistpost: { post_id: @stylistpost.post_id, stylist_id: @stylistpost.stylist_id } }, as: :json
    end

    assert_response 201
  end

  test "should show stylistpost" do
    get stylistpost_url(@stylistpost), as: :json
    assert_response :success
  end

  test "should update stylistpost" do
    patch stylistpost_url(@stylistpost), params: { stylistpost: { post_id: @stylistpost.post_id, stylist_id: @stylistpost.stylist_id } }, as: :json
    assert_response 200
  end

  test "should destroy stylistpost" do
    assert_difference('Stylistpost.count', -1) do
      delete stylistpost_url(@stylistpost), as: :json
    end

    assert_response 204
  end
end
