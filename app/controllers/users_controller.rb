class UsersController < ApplicationController
  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id 
      redirect_to user_path(@user) 
    else
      @error = 'Incorrect username, email or password'
      render new_user_path
    end

  def show #show dashboard or profile

  end

  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
