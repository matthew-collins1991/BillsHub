class Api::V1::CompaniesController < ApplicationController

  before_action :find_company, only: [:update, :show]


    def index
      @companies = Company.all
      render json: @companies
    end

    def show
      render json: @company
    end

    def create
      @company = Company.new(company_params)
      if @company.valid?
        @company.save
        render json: @company, status: :accepted
        else
          render json: { errors: @company.errors.full_messages }, status: :unprocessible_entity
        end
    end



    def update
      @company.update(company_params)
      if @company.save
        render json: @company, status: :accepted
      else
        render json: { errors: @company.errors.full_messages }, status: :unprocessible_entity
      end
    end


    private

    def company_params
      params.permit(:name, :url, :logo)
    end

    def find_company
      @company = Company.find(params[:id])
    end

end
