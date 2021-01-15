class Api::V1::RestaurantsController < ApplicationController
  skip_before_action :authorized, expect: [:index, :show]

  def index
    render json: Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render json: @restaurant
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :address, :phone_number, :hours, :price, :eta, :distance)
  end

end
