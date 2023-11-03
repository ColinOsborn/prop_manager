class HousingAssociation < ApplicationRecord
  # Validations
  validates :name, presence: true

  # Associations
  has_many :users
end
