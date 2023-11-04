class Schedule < ApplicationRecord
  # Tenant Of
  belongs_to :account, inverse_of: :schedules
  accepts_nested_attributes_for :account

  belongs_to :laborer, inverse_of: :schedules
  accepts_nested_attributes_for :laborer

  has_many :bookings, inverse_of: :schedule
  accepts_nested_attributes_for :bookings

  validates :start, uniqueness: { scope: :laborer_id, message: 'You have already made this time available' }

  amoeba do
    enable
    exclude_associations :bookings
  end
end