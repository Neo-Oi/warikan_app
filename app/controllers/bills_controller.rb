class BillsController < ApplicationController
  def index
    @bills = Bill.order(created_at: :desc).limit(5)
  end

  def create
      amount = params[:amount].to_i
      people = params[:people].to_i


      bill = Bill.new(
        amount: amount,
        people: people,
      )

      if bill.valid?
        bill.result = amount/people
        bill.save
        
        redirect_to root_path,notice:"保存しました"
      else
        redirect_to root_path,alert:"入力した値が不正です"
      end
  end
end
