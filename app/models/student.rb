class Student < ApplicationRecord
  resourcify
  
  has_many :courses, through: :cohorts
  has_many :teachers, through: :cohorts
  has_many :student_cohorts, through: :cohorts
  has_many :cohorts, through: :student_cohorts

  # extend FriendlyId
  # friendly_id :student_passport, use: :slugged

  validates :age, numericality: {
    less_than: 150, message: "Must be less than 150"}

end
