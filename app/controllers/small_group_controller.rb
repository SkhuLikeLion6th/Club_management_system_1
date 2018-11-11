class SmallGroupController < ApplicationController
    
    def index
        @groups = SmallGroup.all
    end
    
    def create_group
        @group = SmallGroup.new
        @group.id = params[:small_group_id]
        @group.group_name = params[:group_name]
        @group.introduce = params[:introduce]
        uploader = ImguploaderUploader.new
        uploader.store!(params[:img])
        @group.img_url = uploader.url
        
        @group.save
        
        @option = Option.new
        @option.small_group_id = @group.id
        @option.apply_active = "0"
        
        @option.save
        redirect_to '/small_group/index'
    end
    
    def update_group
        @group = SmallGroup.find(params[:small_group_id])
        @group.id = params[:small_group_id]
        @group.group_name = params[:group_name]
        @group.introduce = params[:introduce]
        uploader = ImguploaderUploader.new
        uploader.store!(params[:img])
        @group.img_url = uploader.url
        
        @group.save
        redirect_to '/small_group/index'
    end
 
 
 


end
