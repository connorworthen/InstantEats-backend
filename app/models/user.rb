class User < ApplicationRecord
  has_secure_password

  # validates :first_name, presence: true
  # validates :first_name, uniqueness: true
  # validates :last_name, presence: true
  # validates :last_name, uniqueness: true
  # validates :email, presence: true
  # validates :email, uniqueness: true
  # validates :address, presence: true
  # validates :address, uniqueness: true
  # validates :phone_number, presence: true
  # validates :phone_number, uniqueness: true 

  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
