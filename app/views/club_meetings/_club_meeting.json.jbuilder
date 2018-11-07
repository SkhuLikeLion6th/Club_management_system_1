json.extract! club_meeting, :id, :name, :start_time, :end_time, :created_at, :updated_at
json.url club_meeting_url(club_meeting, format: :json)
