class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def ensure_user_session
    return redirect_to sign_up_path unless session[:user_id]
  end
end
