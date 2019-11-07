class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end


  def new
    @student = Student.new
    render :new
  end




  def create
   student =  Student.new({first_name: params[:first_name], last_name: params[:last_name]})
    student.save
    redirect_to student
  end
  def show
    @student = Student.find(params[:id])
    render :show
  end

end
