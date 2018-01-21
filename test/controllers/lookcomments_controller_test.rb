require 'test_helper'

class LookcommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lookcomment = lookcomments(:one)
  end

  test "should get index" do
    get lookcomments_url, as: :json
    assert_response :success
  end

  test "should create lookcomment" do
    assert_difference('Lookcomment.count') do
      post lookcomments_url, params: { lookcomment: { comment_id: @lookcomment.comment_id, look_id: @lookcomment.look_id } }, as: :json
    end

    assert_response 201
  end

  test "should show lookcomment" do
    get lookcomment_url(@lookcomment), as: :json
    assert_response :success
  end

  test "should update lookcomment" do
    patch lookcomment_url(@lookcomment), params: { lookcomment: { comment_id: @lookcomment.comment_id, look_id: @lookcomment.look_id } }, as: :json
    assert_response 200
  end

  test "should destroy lookcomment" do
    assert_difference('Lookcomment.count', -1) do
      delete lookcomment_url(@lookcomment), as: :json
    end

    assert_response 204
  end
end
