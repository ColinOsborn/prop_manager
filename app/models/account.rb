class Account < ApplicationRecord
  # Essentially an Association model only
  # Users
  has_many :users, dependent: :destroy, inverse_of: :account
  accepts_nested_attributes_for :users

  # Laborers
  has_many :laborers, dependent: :destroy, inverse_of: :account
  accepts_nested_attributes_for :laborers
  has_many :schedules, dependent: :destroy, inverse_of: :account
  accepts_nested_attributes_for :schedules

  # Clients
  has_many :clients, dependent: :destroy, inverse_of: :account
  accepts_nested_attributes_for :clients

  # Appointments
  has_many :bookings, dependent: :destroy, inverse_of: :account
  accepts_nested_attributes_for :bookings

  has_many :appointment_payments, dependent: :destroy, inverse_of: :account
  accepts_nested_attributes_for :appointment_payments
end
