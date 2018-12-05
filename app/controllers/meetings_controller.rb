class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  # GET /meetings
  # GET /meetings.json
  def index
    @users = User.all
    @meetings = Meeting.all
    @clubs = Club.all
    # @meetings = Meeting.where(club_id: params[:club_id])
    # if user_signed_in?
    #   @current_check_club = ClubMember.find_by_user_id(current_user.id)
    # end    
  end

  # GET /meetings/1
  # GET /meetings/1.json
  def show
    @meetings = Meeting.all
    @clubs = ClubMember.all
  end

  # GET /meetings/new
  def new
    
      # @club_id = ClubMember.find_by_user_id(current_user.id).club_id
      @meeting = Meeting.new
      # @clubs=Club.all
      @clubs = Club.all
      
    
  end

  # GET /meetings/1/edit
  def edit
  end

  # POST /meetings
  # POST /meetings.json
  def create

    @meeting = Meeting.new(meeting_params )
    
    
    
    respond_to do |format|
      if @meeting.save
        format.html { redirect_to  @meeting, notice: 'Meeting was successfully created.' }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meetings/1
  # PATCH/PUT /meetings/1.json
  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to  @meeting, notice: 'Meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1
  # DELETE /meetings/1.json
  def destroy
    @meeting.destroy
    respond_to do |format|
      format.html { redirect_to meetings_url, notice: 'Meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end
    
    # def set_club

    # end
    # def set_club
    #   @club_id = Club.find(params[:club_id])
    # end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_params
      params.require(:meeting).permit(:name, :content, :club_id, :start_time, :end_time)
    end
end
