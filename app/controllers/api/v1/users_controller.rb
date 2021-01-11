class Api::V1::UsersController < ApplicationController
  
  def index
    render json: User.all
    # @users = User.all
    # if @users
    #   render json: {
    #     users: @users
    #   }
    # else
    #   render json: {
    #     status: 500,
    #     errors: ['no users found']
    #   }
    # end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end
  
  def create
    @user = User.new(user_params)
    # binding.pry
    if @user.save
      render json: @user
    else 
      render json: {error: 'Error creating account. Please try again.'}
    end
  end

  private

  def user_params
    params.permit(:email, :password, :address, :phone_number)
  end

end