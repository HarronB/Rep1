# frozen_string_literal: true

class StudentsController < ApplicationController
  def index
    # @student = Student.order(:name)
    @students = Student.includes(:house).order(:name)
  end

  def show
    @student = Student.includes(:house).find(params[:id])
  end
end
