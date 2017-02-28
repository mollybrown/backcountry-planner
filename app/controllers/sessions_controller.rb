class SessionsController < ApplicationController

  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to dashboard_path
  end

  def destroy
    reset_session
    redirect_to root_path, notice => 'Signed out!'
  end

end
