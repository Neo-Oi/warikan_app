class BillsController < ApplicationController
  def index
    @bills = Bill.order(created_at: :desc).limit(5)
  end

  def create
    if params[:amount].present? && params[:people].present?
      amount = params[:amount].to_i
      people = params[:people].to_i

      @result = amount / people

      Bill.create(
        amount: amount,
        people: people,
        result: @result
      )
      redirect_to root_path
    end
  end
end
