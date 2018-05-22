require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_home_url
    assert_response :success
  end

  test "should get landing" do
    get home_landing_url
    assert_response :success
  end

end
