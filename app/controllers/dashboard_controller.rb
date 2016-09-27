class DashboardController < ApplicationController
  before_action :ensure_user_session

  def index
    user = find_user
    @user = user.as_json(include: [:accounts])
  end

  private

  def find_user
    User.find(session[:user_id])
  end
end
