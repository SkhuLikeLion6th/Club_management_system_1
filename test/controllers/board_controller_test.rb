require 'test_helper'

class BoardControllerTest < ActionDispatch::IntegrationTest
  test "should get content1" do
    get board_content1_url
    assert_response :success
  end

  test "should get content2" do
    get board_content2_url
    assert_response :success
  end

end
