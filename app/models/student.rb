class Student < ApplicationRecord
  has_many :courses, through: :cohorts
  has_many :teachers, through: :cohorts

  extend FriendlyId
  friendly_id :student_passport, use: :slugged

  validates :age, numericality: {
    less_than: 150, message: "Must be less than 150"}

end
