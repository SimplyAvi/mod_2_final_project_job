class UsersController < ApplicationController
  def index
      if params[:search]
     @search = User.search(params[:search]).order("created_at DESC")
   else
     @search = User.all.order('created_at DESC')
   end
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

  private

  def user_params
    params.require(:user).permit(:username, :password, :name)
  end

  def job_search_params
    params.require(:user).permit(:search)
  end
end
