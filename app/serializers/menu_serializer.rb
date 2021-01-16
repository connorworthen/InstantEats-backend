class MenuSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  belongs_to :restaurant
  # has_many :items
end
