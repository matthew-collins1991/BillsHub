class Api::V1::BillsController < ApplicationController

  before_action :find_bill, only: [:update, :show]


    def index
      @bills = Bill.all
      render json: @bills
    end

    def show
      render json: @bill
    end

    def create
      @bill = Bill.new(bill_params)
      if @bill.valid?
        @bill.save
        render json: @bill, status: :accepted
        else
          render json: { errors: @bill.errors.full_messages }, status: :unprocessible_entity
        end
    end



    def update
      @bill.update(bill_params)
      if @bill.save
        render json: @bill, status: :accepted
      else
        render json: { errors: @bill.errors.full_messages }, status: :unprocessible_entity
      end
    end

    private

    def bill_params
      params.permit(:utility_id, :cost, :bill_date)
    end

    def find_bill
      @bill = Bill.find(params[:id])
    end

end
