class AuthenticationController < ApplicationController

  def login
    reset_session
  end

  def sign_in
    user = User.find_by(email: params['email'])
    if user
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      redirect_to sign_up_path
    end
  end

  def sign_up
    @user = User.new
  end

  def create_user
    user = User.create(user_params)
    if user
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      flash[:notice] = 'There was a problem with the request'
      redirect_to sign_up_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
