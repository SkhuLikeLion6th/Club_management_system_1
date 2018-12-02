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
        @user.id = current_user.id
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
        
        @member = GroupMember.new
        @member.user_id = @user.id
        @member.small_group_id = @group.id
        @member.save
        
       
        
        if current_user.authorization =='2'
            current_user.authorization = '4'
        end
        
        current_user.save
        
        puts @user[:email]
        puts @user[:mail]
        puts @user.authorization
        puts @user.errors.full_messages
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
 
 
    def group_view
        @group = SmallGroup.find(params[:small_group_id])
        @new_comment = Comment.build_from(@group, current_user.id, "")
        
    end

end
