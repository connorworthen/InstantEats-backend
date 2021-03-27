class Api::V1::SessionsController < ApplicationController
  before_action :authorized, only: [:auto_login, :omniauth]

  def create
    @user = User.find_by(email: session_params[:email])
    # binding.pry
    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      render json: {
        user: UserSerializer.new(@user)
      }
    else
      render json: { 
        status: 401, 
        error: "Could not authenticate your account"
      }
    end
  end

  private

    def session_params
      params.require(:user).permit(:email, :password)
    end
end