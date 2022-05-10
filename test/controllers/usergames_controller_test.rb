require "test_helper"

class UsergamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usergame = usergames(:one)
  end

  test "should get index" do
    get usergames_url, as: :json
    assert_response :success
  end

  test "should create usergame" do
    assert_difference("Usergame.count") do
      post usergames_url, params: { usergame: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show usergame" do
    get usergame_url(@usergame), as: :json
    assert_response :success
  end

  test "should update usergame" do
    patch usergame_url(@usergame), params: { usergame: {  } }, as: :json
    assert_response :success
  end

  test "should destroy usergame" do
    assert_difference("Usergame.count", -1) do
      delete usergame_url(@usergame), as: :json
    end

    assert_response :no_content
  end
end
