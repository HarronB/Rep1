class Student < ApplicationRecord
  belongs_to :house             # The students db table has a house_id FK
  validates :name, presence: true
end
