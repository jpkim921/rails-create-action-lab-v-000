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
    @student = Student.create(params)
    redirect_to student_path(@student)
  end

  def create
  end

end
