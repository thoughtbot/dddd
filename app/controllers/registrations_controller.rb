class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(params[:registration])
    @registration.save
    flash[:success] = "Thanks for registering! We can't wait to see you!"
    redirect_to root_path
  end
end
