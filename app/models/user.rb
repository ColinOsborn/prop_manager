class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true

  has_many :violations
end
