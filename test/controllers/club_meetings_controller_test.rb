require 'test_helper'

class ClubMeetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @club_meeting = club_meetings(:one)
  end

  test "should get index" do
    get club_meetings_url
    assert_response :success
  end

  test "should get new" do
    get new_club_meeting_url
    assert_response :success
  end

  test "should create club_meeting" do
    assert_difference('ClubMeeting.count') do
      post club_meetings_url, params: { club_meeting: { end_time: @club_meeting.end_time, name: @club_meeting.name, start_time: @club_meeting.start_time } }
    end

    assert_redirected_to club_meeting_url(ClubMeeting.last)
  end

  test "should show club_meeting" do
    get club_meeting_url(@club_meeting)
    assert_response :success
  end

  test "should get edit" do
    get edit_club_meeting_url(@club_meeting)
    assert_response :success
  end

  test "should update club_meeting" do
    patch club_meeting_url(@club_meeting), params: { club_meeting: { end_time: @club_meeting.end_time, name: @club_meeting.name, start_time: @club_meeting.start_time } }
    assert_redirected_to club_meeting_url(@club_meeting)
  end

  test "should destroy club_meeting" do
    assert_difference('ClubMeeting.count', -1) do
      delete club_meeting_url(@club_meeting)
    end

    assert_redirected_to club_meetings_url
  end
end
