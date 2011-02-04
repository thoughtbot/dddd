class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
  has_mobile_fu

  helper_method :current_user

  private

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
end
