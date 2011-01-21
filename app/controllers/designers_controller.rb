class DesignersController < MobileController
  def index
    @designers = Registration.designers
  end
end
