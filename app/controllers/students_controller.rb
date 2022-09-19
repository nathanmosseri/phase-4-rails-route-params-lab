class StudentsController < ApplicationController

  def index
    students = if params[:name]
                  Student.by_name(params[:name])
                else
                  Student.all
                end
    render json: students
  end

  def by_id
    student = Student.find(params[:id])
    render json: student
  end

  # def by_name
  #   student = Student.find_by(first_name: params[:key1], last_name: params[:key2])
  #   render json: student
  # end

end
