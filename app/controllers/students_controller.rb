class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def new
    @student = Student.new
  end
  def create
    @student = Student.create(params[:student])
    redirect_to @student
  end
  def show
    @student = Student.find(params[:id])
  end
  def edit
    @student = Student.find(params[:id])
  end
  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to @student
  end

  # private
  # def student_params
  #   params.require(:student).permit(:first_name, :last_name)
  # end
end
