class PartiesController < ApplicationController
  before_filter :force_mobile_format, :if => lambda { params[:mobile] }

  def show
    @partiers   = User.partiers
    @bostonians = User.bostonians
  end
end
