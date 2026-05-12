class BillsController < ApplicationController
  def index
    if params[:amount].present? && params[:people].present?
      amount = params[:amount].to_i
      people = params[:people].to_i

      @result = amount / people
    end
  end
end
