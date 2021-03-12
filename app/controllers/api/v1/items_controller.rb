class Api::V1::ItemsController < ApplicationController
  skip_before_action :authorized, expect: [:index, :show]
  
  def index
    render json: Items.all
  end

  def show
    @menu = Item.find(params[:id])
    render json: @menu
  end
  
end