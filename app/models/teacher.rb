class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :courses, through: :cohorts
  has_many :students, through: :cohorts

  extend FriendlyId
  friendly_id :first_name, use: :slugged


  validates :age, numericality: {
    less_than: 150, message: "Must be less than 150"}

  validates :salary, numericality: {
    greater_than: 0, message: "Must be greater than 0"}
  

end
