require 'test_helper'

class StylistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stylist = stylists(:one)
  end

  test "should get index" do
    get stylists_url, as: :json
    assert_response :success
  end

  test "should create stylist" do
    assert_difference('Stylist.count') do
      post stylists_url, params: { stylist: { avatar: @stylist.avatar, enjoy: @stylist.enjoy, location: @stylist.location, specialty: @stylist.specialty } }, as: :json
    end

    assert_response 201
  end

  test "should show stylist" do
    get stylist_url(@stylist), as: :json
    assert_response :success
  end

  test "should update stylist" do
    patch stylist_url(@stylist), params: { stylist: { avatar: @stylist.avatar, enjoy: @stylist.enjoy, location: @stylist.location, specialty: @stylist.specialty } }, as: :json
    assert_response 200
  end

  test "should destroy stylist" do
    assert_difference('Stylist.count', -1) do
      delete stylist_url(@stylist), as: :json
    end

    assert_response 204
  end
end
