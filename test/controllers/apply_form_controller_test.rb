require 'test_helper'

class ApplyFormControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get apply_form_edit_url
    assert_response :success
  end

end
