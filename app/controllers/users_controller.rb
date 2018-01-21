class UsersController < ApplicationController

  def new
  end

  def index
    @users = User.all
  end

  def create
  end

  def show
    @user = current_user
  end

  def edit
    @user ||= User.find(params[:id])
  end

  def update
    @user ||= current_user
    @user.update_attributes(user_params)
    #@user.image = params[:file]
    @user.save!
    render :template => 'users/show'
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :image)
  end
end
