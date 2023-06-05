class StudentsController < ApplicationController

  def index
    students = Student.all.find_by(first_name: params[:key1], last_name: params[:key2])
    render json: students
  end
  def show
    student = Student.find(params[:id])
    render json: student
  end

end
