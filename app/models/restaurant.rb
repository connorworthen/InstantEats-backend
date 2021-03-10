class Restaurant < ApplicationRecord
  has_one_attached :image
  has_many :menus
  accepts_nested_attributes_for :menus
end
