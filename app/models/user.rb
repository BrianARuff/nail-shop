class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :name, :gender, :dob, presence: true
  validates :username, uniqueness: true

  has_many :careers

  GENDER_TYPES = ['Prefer not to answer', 'Male', 'Female']
end
