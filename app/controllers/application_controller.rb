class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
  has_mobile_fu
end
