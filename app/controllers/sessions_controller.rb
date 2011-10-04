class SessionsController < ApplicationController
  # GET /sessions/new
  # GET /sessions/new.json
  def new

  end


  # POST /sessions
  # POST /sessions.json
  def create
    if user = authenticate(params[:name],params[:password])
      session[:user_id] = user.id
      redirect_to posts_path, :notice => 'logged in'
    else
      redirect_to  login_url, :notice => 'Invalid username or password'
    end
  end



  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    session[:user_id] = nil
    redirect_to posts_path, :notice => 'logged out'
  end
end
