class SmallGroupsController < ApplicationController
  before_action :set_small_group, only: [:show, :edit, :update, :destroy]

  # GET /small_groups
  # GET /small_groups.json
  def index
    @small_groups = SmallGroup.all
  end

  # GET /small_groups/1
  # GET /small_groups/1.json
  def show
    @small_group = SmallGroup.find(params[:id])
    @new_comment = Comment.build_from(@small_group, current_user.id, "")
  end

  # GET /small_groups/new
  def new
    @small_group = SmallGroup.new
  end

  # GET /small_groups/1/edit
  def edit
  end

  # POST /small_groups
  # POST /small_groups.json
  def create
    
    
    @small_group = SmallGroup.new(small_group_params)
    @small_group.user_id = current_user.id

    respond_to do |format|
      if @small_group.save
        @option = GroupOption.new
        @option.small_group_id = @small_group.id
        @option.apply_active = "0"
        @option.view_active = "0"
            
        @option.save
            
        @member = GroupMember.new
        @member.user_id = current_user.id
        @member.small_group_id = @small_group.id
        @member.save
        format.html { redirect_to @small_group, notice: 'Small group was successfully created.' }
        format.json { render :show, status: :created, location: @small_group }
      else
        format.html { render :new }
        format.json { render json: @small_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /small_groups/1
  # PATCH/PUT /small_groups/1.json
  def update
    respond_to do |format|
      if @small_group.update(small_group_params)
        
        format.html { redirect_to @small_group, notice: 'Small group was successfully updated.' }
        format.json { render :show, status: :ok, location: @small_group }
      else
        format.html { render :edit }
        format.json { render json: @small_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /small_groups/1
  # DELETE /small_groups/1.json
  def destroy
    @small_group.destroy
    respond_to do |format|
      format.html { redirect_to small_groups_url, notice: 'Small group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_small_group
      @small_group = SmallGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def small_group_params
      
      params.require(:small_group).permit(:group_name, :introduce, :content, :img_url, :user_id)
    end
end
