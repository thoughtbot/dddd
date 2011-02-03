class SchoolsController < ApplicationController
  def index
    send_data School.stats
  end
end
