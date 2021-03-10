class RestaurantSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  
  attributes :id, :name, :category, :address, :phone_number, :hours, :price, :eta, :distance, :image
  has_many :menus

  def image
    rails_blob_path(object.image, only_path: true) if object.image.attached?
  end
  
end
