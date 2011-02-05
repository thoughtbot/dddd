class SchoolsController < MobileController
  def index
    @schools = School.most_students
  end

  def show
    @school = School.find(params[:id])
  end
end
