class DesignersController < MobileController
  def index
    @designers = Registration.designers
  end

  def show
    @designer = Registration.find(params[:id])
  end
end
