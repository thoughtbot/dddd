class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_or_create_by_auth(auth)
    session[:user_id] = user.id
    redirect_to party_url
  end
end
