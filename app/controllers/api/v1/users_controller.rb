class Api::V1::UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

  def index
    render json: User.all
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end
  
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end


  def auto_login
    render json: @user
  end

  private

  def user_params
    params.permit(:email, :password, :address, :phone_number)
    # params permit(:user) causing user not to save to db when signup
    # once fixed auto_login works. Need auto login to work for redirect
    # to see restaurant selection post address given in form
  end

end