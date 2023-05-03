class User < ApplicationRecord
  # validates :name, presence: true
  # validates :email, presence: true
  # validates :street_address, presence: true
  # validates :state, presence: true
  # validates :zip_code, presence: true
  # validates :phone_number, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def first_name
    name.split.first
  end

  def last_name
    name.split.last
  end
end
