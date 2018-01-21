require 'test_helper'

class UsercommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usercomment = usercomments(:one)
  end

  test "should get index" do
    get usercomments_url, as: :json
    assert_response :success
  end

  test "should create usercomment" do
    assert_difference('Usercomment.count') do
      post usercomments_url, params: { usercomment: { comment_id: @usercomment.comment_id, user_id: @usercomment.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show usercomment" do
    get usercomment_url(@usercomment), as: :json
    assert_response :success
  end

  test "should update usercomment" do
    patch usercomment_url(@usercomment), params: { usercomment: { comment_id: @usercomment.comment_id, user_id: @usercomment.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy usercomment" do
    assert_difference('Usercomment.count', -1) do
      delete usercomment_url(@usercomment), as: :json
    end

    assert_response 204
  end
end
