class ApplicationController < ActionController::Base
  def find_user
    @user_id = session[:user_id]
    @logged_in = !!@user_id
    if logged_in
      @current_user = User.find(@user_id)
      redirect_to search_path
    end
  end
  def logout
    session[:user_id] = nil
  end

  def authorize?
    unless @logged_in
    return redirect_to new_login_path
  end

end


end
