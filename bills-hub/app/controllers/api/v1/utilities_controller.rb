class Api::V1::UtilitiesController < ApplicationController

  before_action :find_utility, only: [:update]
    def index
      @utilities = Utility.all
      render json: @utilities
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
      params.permit(:title, :content)
    end

    def find_utility
      @utility = Utility.find(params[:id])
    end

end
