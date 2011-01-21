class DevelopersController < MobileController
  def index
    @developers = Registration.developers
  end
end
