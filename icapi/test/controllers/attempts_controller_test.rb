require 'test_helper'

class AttemptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attempt = attempts(:one)
  end

  test "should get index" do
    get attempts_url, as: :json
    assert_response :success
  end

  test "should create attempt" do
    assert_difference('Attempt.count') do
      post attempts_url, params: { attempt: { first_name: @attempt.first_name, game_id: @attempt.game_id, last_name: @attempt.last_name } }, as: :json
    end

    assert_response 201
  end

  test "should show attempt" do
    get attempt_url(@attempt), as: :json
    assert_response :success
  end

  test "should update attempt" do
    patch attempt_url(@attempt), params: { attempt: { first_name: @attempt.first_name, game_id: @attempt.game_id, last_name: @attempt.last_name } }, as: :json
    assert_response 200
  end

  test "should destroy attempt" do
    assert_difference('Attempt.count', -1) do
      delete attempt_url(@attempt), as: :json
    end

    assert_response 204
  end
end
