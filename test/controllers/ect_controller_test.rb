require 'test_helper'

class EctControllerTest < ActionDispatch::IntegrationTest
  test "should get repairing_page" do
    get ect_repairing_page_url
    assert_response :success
  end

end
