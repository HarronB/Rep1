# frozen_string_literal: true

class House < ApplicationRecord
  # these table relationhips have to manually be set up, as this table was
  #  created before the others.
  has_many :students
  has_many :teachers

  validates :name, :points, presence: true
  validates :points, numericality: { only_integer: true }
end
