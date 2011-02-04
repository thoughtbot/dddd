class PartiesController < ApplicationController
  def show
    @partiers   = User.partiers
    @bostonians = User.bostonians
  end
end
