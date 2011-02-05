class DevelopersController < MobileController
  def index
    @developers = Registration.developers
  end

  def show
    @developer = Registration.find(params[:id])
  end
end
