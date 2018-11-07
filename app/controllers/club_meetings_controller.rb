class ClubMeetingsController < ApplicationController
  before_action :set_club_meeting, only: [:show, :edit, :update, :destroy]

  # GET /club_meetings
  # GET /club_meetings.json
  def index
    @club_meetings = ClubMeeting.all
  end

  # GET /club_meetings/1
  # GET /club_meetings/1.json
  def show
  end

  # GET /club_meetings/new
  def new
    @club_meeting = ClubMeeting.new
  end

  # GET /club_meetings/1/edit
  def edit
  end

  # POST /club_meetings
  # POST /club_meetings.json
  def create
    @club_meeting = ClubMeeting.new(club_meeting_params)

    respond_to do |format|
      if @club_meeting.save
        format.html { redirect_to @club_meeting, notice: 'Club meeting was successfully created.' }
        format.json { render :show, status: :created, location: @club_meeting }
      else
        format.html { render :new }
        format.json { render json: @club_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /club_meetings/1
  # PATCH/PUT /club_meetings/1.json
  def update
    respond_to do |format|
      if @club_meeting.update(club_meeting_params)
        format.html { redirect_to @club_meeting, notice: 'Club meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @club_meeting }
      else
        format.html { render :edit }
        format.json { render json: @club_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /club_meetings/1
  # DELETE /club_meetings/1.json
  def destroy
    @club_meeting.destroy
    respond_to do |format|
      format.html { redirect_to club_meetings_url, notice: 'Club meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club_meeting
      @club_meeting = ClubMeeting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_meeting_params
      params.require(:club_meeting).permit(:name, :start_time, :end_time)
    end
end
