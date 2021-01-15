class Api::V1::MenusController < ApplicationController
  skip_before_action :authorized, expect: [:index, :show]
  
  def index
    render json: Menus.all
  end

  def show
    @menu = Menu.find(params[:id])
    render json: @menu
  end
  
end