class Admin < ApplicationRecord
  resourcify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # user = User.find(1)
  # user.add_role :admin
end
