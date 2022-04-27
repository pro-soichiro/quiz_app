class UsersController < ApplicationController
  before_action :set_user, only: [:edit,:update,:show,:destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path
    else
      render :new
    end

  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to users_path
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def show
  end

  def index
    @users = User.all
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name,:email,:password)
    end
end
