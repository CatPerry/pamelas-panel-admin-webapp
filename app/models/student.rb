class Student < ApplicationRecord
  has_many :courses, through: :cohorts
  has_many :teachers, through: :cohorts

  validates :age, numericality: {
    less_than: 150, message: "Must be less than 150"}

end
