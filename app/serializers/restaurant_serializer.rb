class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :address, :phone_number, :hours, :price, :eta, :distance
  has_many :menus
end
