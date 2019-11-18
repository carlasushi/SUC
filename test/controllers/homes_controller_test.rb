require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get homes_name_url
    assert_response :success
  end

end
