class User < ApplicationRecord
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true 
end
