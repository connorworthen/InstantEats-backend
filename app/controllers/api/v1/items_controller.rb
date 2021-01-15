class Api::V1::ItemsController < ApplicationController

  def index
    render json: Items.all
  end

  def show
    @item = Item.find(params[:id])
    render json: @item
  end
end