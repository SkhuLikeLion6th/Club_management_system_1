class SmallGroupController < ApplicationController
    
    def index
        @groups = SmallGroup.all
        @user = current_user
        # puts @user.authorization
    end
    
    def new_group
    end
    
    
    def create_group
        @user = User.new
        @user = current_user.id
        @group = SmallGroup.new
        @group.id = params[:small_group_id]
        @group.group_name = params[:group_name]
        @group.introduce = params[:introduce]
        @group.content = params[:content]
        uploader = ImguploaderUploader.new
        uploader.store!(params[:img])
        @group.img_url = uploader.url
        
        @group.save
        
        @option = GroupOption.new
        @option.small_group_id = @group.id
        @option.apply_active = "0"
        @option.view_active = "0"
        
        @option.save
        
        # if @user.authorization == '2'
        #     @user.authorization = '1'
        # end
        # puts @user.authorization
        # @user.save        
        
        redirect_to '/small_group/index'
        

    
    end
    
    def update_group
        
        
        @group = SmallGroup.find(params[:small_group_id])
        @group.id = params[:small_group_id]
        @group.group_name = params[:group_name]
        @group.introduce = params[:introduce]
        @group.content = params[:content]
        uploader = ImguploaderUploader.new
        uploader.store!(params[:img])
        @group.img_url = uploader.url
        
        @group.save

        
        
        redirect_to '/small_group/index'
    end
 
 
 


end
