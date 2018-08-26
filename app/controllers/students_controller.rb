class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new(params)
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end



  private

  def students_param
    params.require(:student).permit(:first_name, :last_name)
  end
end
