class Course < ApplicationRecord
  has_many :cohorts

  validates :hours, numericality: {
    greater_than: 0, message: "Total in class hours cannot be 0"}

end
