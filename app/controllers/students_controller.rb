# frozen_string_literal: true

class StudentsController < ApplicationController
  def index
    @student = Student.order(:name)
  end

  def show
    @student = Student.find(params[:id])
  end
end
