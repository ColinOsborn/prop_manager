class Laborer < ApplicationRecord
  # Tenant Of
  belongs_to :account, inverse_of: :laborers
  accepts_nested_attributes_for :account

  belongs_to :user, inverse_of: :laborers
  accepts_nested_attributes_for :user

  has_many :bookings, dependent: :destroy, inverse_of: :laborer
  accepts_nested_attributes_for :bookings

  has_many :appointments, through: :bookings

  has_many :appointment_payments, through: :bookings

  has_many :schedules, dependent: :destroy, inverse_of: :laborer
  accepts_nested_attributes_for :schedules

  mount_uploader :photo, LaborerUploader

  def name
    "#{first_name} #{last_name}"
  end

  def email
    User.find_by_id(user_id)
  end
end
