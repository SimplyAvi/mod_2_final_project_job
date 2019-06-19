class LoginController < ApplicationController
  skip_before_action :authorized?, only: [:new, :create]

def new

end

def create
  @user = User.find_by(username: params[:username])
    if @user @@user.authenticate(params[:password])
      flash[:message] = "logged in #{@user.name}"
      redirect_to user_path
    else
      flash[:message] = "Incorrect username or password"
      redirect_to new_user_path
    end
end

def destroy
logout
redirect_to hirings_path
end

end
