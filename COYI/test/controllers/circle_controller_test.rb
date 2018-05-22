require 'test_helper'

class CircleControllerTest < ActionDispatch::IntegrationTest
  test "should get global" do
    get circle_global_url
    assert_response :success
  end

  test "should get chapter" do
    get circle_chapter_url
    assert_response :success
  end

  test "should get advocate" do
    get circle_advocate_url
    assert_response :success
  end

  test "should get news" do
    get circle_news_url
    assert_response :success
  end

  test "should get rules" do
    get circle_rules_url
    assert_response :success
  end

end
