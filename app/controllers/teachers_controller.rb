class TeachersController < ApplicationController

  # GET /teachers
  def index
    @teachers = Teacher.order(:name)
  end

  # GET /teachers/:id
  def show
    @teacher = Teacher.find(params[:id])
  end
end
