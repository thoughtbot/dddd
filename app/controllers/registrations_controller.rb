class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
    @developers   = Registration.developers
    @designers    = Registration.designers
    @startups     = Startup.alphabetical
    @talks        = Talk.chronological
  end

  def create
    @registration = Registration.new(params[:registration])

    if @registration.save
      render :partial => 'thanks', :locals => { :registration => @registration }
    else
      render :partial => 'form', :locals => { :registration => @registration }
    end
  end
end
