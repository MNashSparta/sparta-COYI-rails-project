require 'test_helper'

class HundredDayChallengesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hundred_day_challenge = hundred_day_challenges(:one)
  end

  test "should get index" do
    get hundred_day_challenges_url
    assert_response :success
  end

  test "should get new" do
    get new_hundred_day_challenge_url
    assert_response :success
  end

  test "should create hundred_day_challenge" do
    assert_difference('HundredDayChallenge.count') do
      post hundred_day_challenges_url, params: { hundred_day_challenge: { Address: @hundred_day_challenge.Address, Email: @hundred_day_challenge.Email, First_name: @hundred_day_challenge.First_name, Last_name: @hundred_day_challenge.Last_name, Location: @hundred_day_challenge.Location, Organisation: @hundred_day_challenge.Organisation } }
    end

    assert_redirected_to hundred_day_challenge_url(HundredDayChallenge.last)
  end

  test "should show hundred_day_challenge" do
    get hundred_day_challenge_url(@hundred_day_challenge)
    assert_response :success
  end

  test "should get edit" do
    get edit_hundred_day_challenge_url(@hundred_day_challenge)
    assert_response :success
  end

  test "should update hundred_day_challenge" do
    patch hundred_day_challenge_url(@hundred_day_challenge), params: { hundred_day_challenge: { Address: @hundred_day_challenge.Address, Email: @hundred_day_challenge.Email, First_name: @hundred_day_challenge.First_name, Last_name: @hundred_day_challenge.Last_name, Location: @hundred_day_challenge.Location, Organisation: @hundred_day_challenge.Organisation } }
    assert_redirected_to hundred_day_challenge_url(@hundred_day_challenge)
  end

  test "should destroy hundred_day_challenge" do
    assert_difference('HundredDayChallenge.count', -1) do
      delete hundred_day_challenge_url(@hundred_day_challenge)
    end

    assert_redirected_to hundred_day_challenges_url
  end
end
