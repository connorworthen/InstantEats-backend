class Api::V1::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render json: @restaurants
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :price, :hours, :distance)
  end

end
