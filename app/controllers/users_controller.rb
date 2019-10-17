class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users/1
  # GET /users/1.json
  def show
      if @user.student
          @applied_posts = PostsStatus.where(s_id: @user.id).pluck(:post_id)
          @posts = Post.where.not(id: @applied_posts).order(:i_id)
      else
          @posts = Post.where(i_id: current_user.id).reverse_order()
      end
          
  end

  # GET /users/new
  def new
    @user = User.new
  end
  
  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        profile = Profile.new
        profile.email = @user.email
        profile.id = @user.id
        profile.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :student)
    end
end
