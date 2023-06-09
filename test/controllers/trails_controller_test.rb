require "test_helper"

class TrailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trail = trails(:one)
  end

  test "should get index" do
    get trails_url, as: :json
    assert_response :success
  end

  test "should create trail" do
    assert_difference("Trail.count") do
      post trails_url, params: { trail: { description: @trail.description, latitude: @trail.latitude, location: @trail.location, longitude: @trail.longitude, name: @trail.name } }, as: :json
    end

    assert_response :created
  end

  test "should show trail" do
    get trail_url(@trail), as: :json
    assert_response :success
  end

  test "should update trail" do
    patch trail_url(@trail), params: { trail: { description: @trail.description, latitude: @trail.latitude, location: @trail.location, longitude: @trail.longitude, name: @trail.name } }, as: :json
    assert_response :success
  end

  test "should destroy trail" do
    assert_difference("Trail.count", -1) do
      delete trail_url(@trail), as: :json
    end

    assert_response :no_content
  end
end
