require 'test_helper'

class SucessControllerTest < ActionDispatch::IntegrationTest
  test "should get stories" do
    get sucess_stories_url
    assert_response :success
  end

end
