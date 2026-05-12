Rails.application.routes.draw do
  root "bills#index"

  post "/bills",to: "bills#create"
  resources :bills, only: [:new,:create,:index]
end
