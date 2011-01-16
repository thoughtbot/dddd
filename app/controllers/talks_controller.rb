class TalksController < ApplicationController
  def index
    @talks = Talk.chronological
  end
end
