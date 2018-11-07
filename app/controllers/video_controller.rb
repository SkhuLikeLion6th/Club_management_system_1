class VideoController < ApplicationController


  
  def index
    @user = User.new
    @club = Club.new
    @videos = Video.all.order('created_at desc')
    @clubs = Club.all
    

  end
  
  
  def destroy
    @videos = Video.find(params[:id])
    @videos.destroy
    redirect_to root_path
  end
  
  
  
  
  def new
    @club_id = ClubMember.find_by_user_id(current_user.id).club_id
    puts #{@club_id}
  end
  
  def create
    @club_id = ClubMember.find_by_user_id(current_user.id).club_id
    @videos = Video.new(user_id: current_user.id, club_id: @club_id.to_i ,content: params[:content], title: params[:title] )
    if @videos.save
      redirect_to '/video/index'
    else
      redirect_to new_video_path 
    end
  
  end
  
  def edit
    
    @videos = Video.find(params[:id])
  end
  
  def show
  end
  
  def update
    @videos = Video.find(params[:id])
    redirect_to root_path if @videos.user.id != current_user.id
    @videos = Video.find(params[:club_id])
    @videos.title = params[:title]
    @videos.content = params[:content]
    if @videos.save
      redirect_to root_path
    else 
      render :edit
    end
  end
  

  
  def club_video
    @clubs = Club.all
    @club_id = params[:club_id].to_i
    @videos = Video.all.order('created_at desc')
  end
end
