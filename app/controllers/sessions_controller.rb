class SessionsController < ApplicationController

  def index

  end

  def new

  end

  def create
    @user = User.find_by(username: params[:username], password: params[:password])
    if @user
      session['user_id'] = @user.id
      flash[:notice] = '登录成功'
      if session[:next_url]
        redirect_to session[:next_url]
      else
        redirect_to root_path
      end

    else
      flash[:notice] = '用户名或密码不正确'
      render action: :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = '退出成功'
    redirect_to root_path
  end
end
