class Client < ApplicationRecord
  # Tenant Of
  belongs_to :account, inverse_of: :clients
  accepts_nested_attributes_for :account

  belongs_to :user, inverse_of: :clients
  accepts_nested_attributes_for :user

  has_many :bookings, dependent: :destroy, inverse_of: :client
  accepts_nested_attributes_for :bookings

  has_many :appointments, through: :bookings

  has_many :appointment_payments, through: :bookings

  mount_uploader :photo, ClientUploader

  def name
    "#{first_name} #{last_name}"
  end

  def email
    User.find_by_id(user_id)
  end
end
