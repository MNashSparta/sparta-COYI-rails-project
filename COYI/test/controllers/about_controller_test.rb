require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get about_about_url
    assert_response :success
  end

  test "should get contact" do
    get about_contact_url
    assert_response :success
  end

  test "should get faq" do
    get about_faq_url
    assert_response :success
  end

end
