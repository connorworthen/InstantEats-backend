class Api::V1::RestaurantsController < ApplicationController

  def index
    
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :price, :hours, :distance)
  end
  
end
