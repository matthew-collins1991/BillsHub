class Api::V1::UtilitiesController < ApplicationController

  before_action :find_utility, only: [:update, :show]


    def index
      @utilities = Utility.all
      render json: @utilities
    end

    def show
      render json: @utility
    end

    def create
      @utility = Utility.new(utility_params)
      if @utility.valid?
        @utility.save
        render json: @utility, status: :accepted
        else
          render json: { errors: @utility.errors.full_messages }, status: :unprocessible_entity
        end
    end



    def update
      @utility.update(utility_params)
      if @utility.save
        render json: @utility, status: :accepted
      else
        render json: { errors: @utility.errors.full_messages }, status: :unprocessible_entity
      end
    end

    private

    def utility_params
      params.permit(:company_id, :user_id, :utility_type, :renewal_date, :start_date, :payment_type, :payment_freq, :active)
    end

    def find_utility
      @utility = Utility.find(params[:id])
    end

end
