class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:name], search: params[:search] )
    redirect_to users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :name)
  end

  def job_search_params
    params.require(:user).permit(:search)
  end
end
