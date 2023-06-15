require "test_helper"

class TrailTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trail_tag = trail_tags(:one)
  end

  test "should get index" do
    get trail_tags_url, as: :json
    assert_response :success
  end

  test "should create trail_tag" do
    assert_difference("TrailTag.count") do
      post trail_tags_url, params: { trail_tag: { tag_id: @trail_tag.tag_id, trail_id: @trail_tag.trail_id } }, as: :json
    end

    assert_response :created
  end

  test "should show trail_tag" do
    get trail_tag_url(@trail_tag), as: :json
    assert_response :success
  end

  test "should update trail_tag" do
    patch trail_tag_url(@trail_tag), params: { trail_tag: { tag_id: @trail_tag.tag_id, trail_id: @trail_tag.trail_id } }, as: :json
    assert_response :success
  end

  test "should destroy trail_tag" do
    assert_difference("TrailTag.count", -1) do
      delete trail_tag_url(@trail_tag), as: :json
    end

    assert_response :no_content
  end
end
