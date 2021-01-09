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
    # @user = User.find(params[:id])
    # if @user
    #   render json: {
    #     user: @user
    #   }
    # else
    #   render json: {
    #     status: 500,
    #     errors: ['user not found']
    #   }
    # end
  end
  
  def create
    @user = User.new(user_params)
    binding.pry
    if @user.save
      render json: @user
      # binding.pry
    else 
      render json: {error: 'Error creating account. Please try again.'}
      # binding.pry
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :address, :phone_number)
  end

end