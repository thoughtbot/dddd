class UsersController < ApplicationController
  def update
    if current_user.update_attributes(params[:user])
      render :partial => 'parties/thanks'
    else
      render :partial => 'parties/form'
    end
  end
end
