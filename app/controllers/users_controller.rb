class UsersController < ApplicationController
  include ActionController::Cookies
  skip_before_action :authorize_user, :only => [:index, :show, :create, :update]

  
  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    user = set_user
    render json: user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    user = User.find(params[:id])
    user.update(update_user_params)
    render json: user, status: :created
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:username, :email, :password)
    end

    def update_user_params
      params.permit(:username)
    end
end
