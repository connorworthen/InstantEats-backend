class Api::V1::RestaurantsController < ApplicationController

  def index
    render json: Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render json: @restaurant
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :price, :hours, :distance)
  end

end
