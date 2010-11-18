class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(params[:registration])
    if @registration.save
      flash[:success] = "Thanks for registering! We can't wait to see you!"
      redirect_to root_path
    else
      render :action => :new
    end
  end
end
