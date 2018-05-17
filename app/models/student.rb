class Student < ApplicationRecord
  has_many :courses, through: :cohorts
  has_many :teachers, through: :cohorts

  extend FriendlyId
  friendly_id :first_name_and_last_name_and_id, use: :slugged

  validates :age, numericality: {
    less_than: 150, message: "Must be less than 150"}

  def first_name_and_last_name_and_id
    "#{@first_name} #{@last_name} #{@id}"
  end

end
