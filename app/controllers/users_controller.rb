class UsersController < ApplicationController
  def update
    current_user.update_attributes(params[:user])
    redirect_to party_path, :notice => "RSVP updated. It's only a party if you make it a party."
  end
end
