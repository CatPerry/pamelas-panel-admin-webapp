class Cohort < ApplicationRecord
  belongs_to :course
  belongs_to :teacher
  belongs_to :student
  belongs_to :cohort, required: false

  has_many :students, through: :cohorts
  has_many :student_cohorts
  has_many :students, through: :student_cohorts
  has_many :teachers, through: :cohorts
  has_many :teacher_cohorts
  has_many :teachers, through: :teacher_cohorts
 

  # extend FriendlyId
  # friendly_id :name, use: :slugged


end
