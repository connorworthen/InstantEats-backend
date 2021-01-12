class Api::V1::UsersController < ApplicationController
  
  def index
    render json: User.all
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else 
      render json: {error: 'Error creating account. Please try again.'}
    end
  end

  def login
    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      render json: @user
    else
      render json: { 
        status: 401,
        errors: ['no such user', 'verify credentials and try again or signup']
      }
    end
  end

  private

  def user_params
    params.permit(:email, :password, :address, :phone_number)
  end

end