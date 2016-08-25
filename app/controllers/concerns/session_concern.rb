module SessionConcern
  extend ActiveSupport::Concern

  def find_user
    @user = User.find(session[:user_id]) if session[:user_id]
  end
end
