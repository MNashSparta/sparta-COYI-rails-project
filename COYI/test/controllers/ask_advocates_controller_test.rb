require 'test_helper'

class AskAdvocatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ask_advocate = ask_advocates(:one)
  end

  test "should get index" do
    get ask_advocates_url
    assert_response :success
  end

  test "should get new" do
    get new_ask_advocate_url
    assert_response :success
  end

  test "should create ask_advocate" do
    assert_difference('AskAdvocate.count') do
      post ask_advocates_url, params: { ask_advocate: { question: @ask_advocate.question } }
    end

    assert_redirected_to ask_advocate_url(AskAdvocate.last)
  end

  test "should show ask_advocate" do
    get ask_advocate_url(@ask_advocate)
    assert_response :success
  end

  test "should get edit" do
    get edit_ask_advocate_url(@ask_advocate)
    assert_response :success
  end

  test "should update ask_advocate" do
    patch ask_advocate_url(@ask_advocate), params: { ask_advocate: { question: @ask_advocate.question } }
    assert_redirected_to ask_advocate_url(@ask_advocate)
  end

  test "should destroy ask_advocate" do
    assert_difference('AskAdvocate.count', -1) do
      delete ask_advocate_url(@ask_advocate)
    end

    assert_redirected_to ask_advocates_url
  end
end
