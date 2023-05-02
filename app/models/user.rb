class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true

  has_many :violations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # eventually setup for confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def first_name
    name.split.first
  end

  def last_name
    name.split.last
  end
end
