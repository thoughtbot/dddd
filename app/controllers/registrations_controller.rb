class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(params[:registration])

    if @registration.save
      render :partial => 'thanks'
    else
      render :partial => 'form', :locals => { :registration => @registration }
    end
  end
end
