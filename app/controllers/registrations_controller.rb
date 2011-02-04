class RegistrationsController < ApplicationController
  def new
    unless is_mobile_device?
      @developers   = Registration.developers
      @designers    = Registration.designers
      @startups     = Startup.alphabetical
      @talks        = Talk.chronological
    end
  end

  def create
    # @registration = Registration.new(params[:registration])

    # if @registration.save
    #   render :partial => 'thanks', :locals => { :registration => @registration }
    # else
    #   render :partial => 'form', :locals => { :registration => @registration }
    # end
  end

  def index
    send_data Registration.stats
  end
end
