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
    if @user
      render json: {
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: ['user not found']
      }
    end
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      # login!
      payload = {user_id: user.id}
      token = encode_token(payload)
      render json: {
        status: :created,
        user: @user,
        :jwt => token
      }
    else 
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :address, :phone_number)
  end

end