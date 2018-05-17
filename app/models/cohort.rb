class Cohort < ApplicationRecord
  belongs_to :course
  has_many :students, through: :cohorts
  has_many :students, through: :student_cohorts
  has_many :teachers, through: :cohorts
  has_many :teachers, through: :teacher_cohorts

  extend FriendlyId
  friendly_id :name, use: :slugged

  # @cohort = @course.create

  
end
