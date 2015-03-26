class SessionsController < ApplicationController
 
  def new
  end

  def create
    @user = User.find_by(username: session_params[:username]).try(:authenticate, session_params[:password])

    if @user
      session[:user_id] = @user.id
      redirect_to root_path
    else
      @error = 'Incorrect username, email or password'
      render new_session_path
    end

  end

  def destroy
    session.clear
    redirect_to root_path
  end

def session_params
    params.require(:session).permit(:username, :email, :password)
  end


end
