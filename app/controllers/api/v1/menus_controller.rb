class Api::V1::MenusController < ApplicationController

  def index
    render json: Menus.all
  end

  def show
    @menu = Menu.find(params[:id])
    render json: @menu
  end
  
end