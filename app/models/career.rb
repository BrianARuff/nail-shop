class Career < ApplicationRecord
  belongs_to :user

  validates :position, :location, :description, :user_id, presence: true
end
