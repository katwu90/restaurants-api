class Restaurant < ApplicationRecord
  belongs_to :user
  validates :name, :rating, presence: true
end
