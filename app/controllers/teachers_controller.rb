# frozen_string_literal: true

class TeachersController < ApplicationController
  # GET /teachers
  def index
    @teachers = Teacher.includes(:house).order(:name)
  end

  # GET /teachers/:id
  def show
    @teacher = Teacher.includes(:house).find(params[:id])
  end
end
