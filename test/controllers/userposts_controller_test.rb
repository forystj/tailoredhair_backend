require 'test_helper'

class UserpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userpost = userposts(:one)
  end

  test "should get index" do
    get userposts_url, as: :json
    assert_response :success
  end

  test "should create userpost" do
    assert_difference('Userpost.count') do
      post userposts_url, params: { userpost: { posts_id: @userpost.posts_id, user_id: @userpost.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show userpost" do
    get userpost_url(@userpost), as: :json
    assert_response :success
  end

  test "should update userpost" do
    patch userpost_url(@userpost), params: { userpost: { posts_id: @userpost.posts_id, user_id: @userpost.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy userpost" do
    assert_difference('Userpost.count', -1) do
      delete userpost_url(@userpost), as: :json
    end

    assert_response 204
  end
end
