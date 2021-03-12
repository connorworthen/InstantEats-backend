class Restaurant < ApplicationRecord
  has_one_attached :image
  has_many :items
  accepts_nested_attributes_for :items
end
