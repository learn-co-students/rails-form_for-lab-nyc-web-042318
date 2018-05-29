# This controller class describes how data will be exchanges between the view
# and model. Just as specified in routes.rb, the available methods are
# index show new create edit and update
class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = get_schoolclass
  end

  def show
    @school_class = get_schoolclass
  end

  def update
    @school_class = get_schoolclass
    @school_class.update(get_params)
    redirect_to school_class_path(@school_class)
  end

  def create
    @school_class = SchoolClass.create(get_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def get_schoolclass
    SchoolClass.find(params[:id])
  end

  def get_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
