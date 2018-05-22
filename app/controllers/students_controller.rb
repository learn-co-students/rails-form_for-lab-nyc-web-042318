# This controller class describes the student interface between the model/db
# and the views with show edit new create
class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = get_student
  end

  def update
    @student = get_student
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    @student = get_student
  end

  private

  def get_student
    Student.find(params[:id])
    #code
  end
end
