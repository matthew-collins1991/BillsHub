class Api::V1::UsersController < ApplicationController

  before_action :find_user, only: [:update, :show]


  def index
    @users = User.all
    render json: @users
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render json: @user
    else
      render json: {error: "Email/password combination invalid."}, status: 401
    end
  end

  def validate
    @user = get_current_user
    if @user
      render json: @user
    else
      render json: {error: "Email/password combination invalid."}, status: 401
    end
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      render json: @user, status: :accepted
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
      end
  end



  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end


  private

  def user_params
      params.require(:user).permit(:name, :email, :password)
  end



  def find_user
    @user = User.find(params[:id])
  end

end
