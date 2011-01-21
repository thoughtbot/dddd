class StartupsController < MobileController
  def index
    @startups = Startup.alphabetical
  end

  def show
    @startup = Startup.find(params[:id])
  end
end
