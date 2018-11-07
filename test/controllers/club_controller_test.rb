require 'test_helper'

class ClubControllerTest < ActionDispatch::IntegrationTest
  test "should get club_view" do
    get club_club_view_url
    assert_response :success
  end

end
