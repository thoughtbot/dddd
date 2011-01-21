class TalksController < ApplicationController
  before_filter do
    if request.xhr?
      force_mobile_format
    end
  end

  def index
    @talks = Talk.chronological
  end

  def show
    @talk = Talk.find(params[:id])
  end
end
