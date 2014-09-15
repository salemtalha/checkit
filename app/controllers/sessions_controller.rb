class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to :controller => 'links', :action => 'index'
    else
      redirect_to root_url, :alert => "invalid login"
    end
  end

  def destroy 
    session[:user_id] = nil
    redirect_to root_url
  end
end
