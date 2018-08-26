class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    binding.pry
    # @student = Student.new(params)
  end

  def create
    @student =
  end

  def create
  end

end
