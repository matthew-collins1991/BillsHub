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
      @user = User.find(utility_params[:user_id])
      @company = Company.find_or_create_by(company_params)
        if @company.save
          # render json: @company, status: :accepted
          @utility = Utility.new(utility_params)
          @utility.company= @company
          @utility.user = @user
            if @utility.save
                # render json: @utility, status: :accepted
                  @bill = Bill.new(bill_params)
                  @bill.utility = @utility
                    if @bill.save
                        render json: @user, status: :accepted
                          else
                            render json: { errors: @bill.errors.full_messages }, status: :unprocessible_entity
                          end
                        else
                          render json: { errors: @utility.errors.full_messages }, status: :unprocessible_entity
                        end
                    else
                      render json: { errors: @company.errors.full_messages }, status: :unprocessible_entity
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

    def bill_params
      params.permit(:utility_id, :cost, :bill_date)
    end

    def company_params
      params.permit(:name, :url, :logo)
    end

    def find_utility
      @utility = Utility.find(params[:id])
    end

end
