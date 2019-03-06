# frozen_string_literal: true

class Teacher < ApplicationRecord

  belongs_to :house # The teachers table has a house_id FK
  validates :name, presence: true
end
