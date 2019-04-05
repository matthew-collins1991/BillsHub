class Api::V1::UsersController < ApplicationController

  before_action :find_user, only: [:update, :show]


    def index
      @users = User.all
      render json: @users
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
      params.permit(:name, :email, :password, :password_digest, :location, :age, :house_size)
    end

    def find_user
      @user = User.find(params[:id])
    end

end
