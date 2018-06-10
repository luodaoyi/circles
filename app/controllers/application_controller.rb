class ApplicationController < ActionController::Base

  before_action :set_login_user

  private

  def set_login_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

end
