class BillsController < ApplicationController
  def index
    @bills = Bill.order(created_at: :desc).limit(5)
  end

  def create
      amount = params[:amount].to_i
      people = params[:people].to_i

      if people <= 0
        redirect_to root_path, alert: "人数は1以上です。"
        return
      end
      if amount <= 0
        redirect_to root_path, alert: "金額は１以上です。"
        return
      end


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
