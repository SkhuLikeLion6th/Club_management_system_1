require 'test_helper'

class ApplyContentControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get apply_content_create_url
    assert_response :success
  end

end
