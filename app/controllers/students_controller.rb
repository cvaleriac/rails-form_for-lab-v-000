<<<<<<< HEAD
require 'pry'

class StudentsController < ApplicationController

  def index
    @student = Student.all
  end

  def new
    @student = Student.new
=======
class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @students = Student.new
>>>>>>> 3735e1dc1dc7747bc9be27cd1801f866b86dcb68
  end

  def create
    @student = Student.new(student_params)
  @student.save
  redirect_to student_path(@student)
  end

  def show
<<<<<<< HEAD
    @student = Student.find(params[:id])
=======
    @students = Student.find(params[:id])
>>>>>>> 3735e1dc1dc7747bc9be27cd1801f866b86dcb68
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
  @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
