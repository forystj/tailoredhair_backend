require 'test_helper'

class LooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @look = looks(:one)
  end

  test "should get index" do
    get looks_url, as: :json
    assert_response :success
  end

  test "should create look" do
    assert_difference('Look.count') do
      post looks_url, params: { look: { caption: @look.caption, image: @look.image, likes: @look.likes, tags: @look.tags } }, as: :json
    end

    assert_response 201
  end

  test "should show look" do
    get look_url(@look), as: :json
    assert_response :success
  end

  test "should update look" do
    patch look_url(@look), params: { look: { caption: @look.caption, image: @look.image, likes: @look.likes, tags: @look.tags } }, as: :json
    assert_response 200
  end

  test "should destroy look" do
    assert_difference('Look.count', -1) do
      delete look_url(@look), as: :json
    end

    assert_response 204
  end
end
