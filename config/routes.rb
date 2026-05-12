Rails.application.routes.draw do
  root "bills#index"
  resources :bills, only: [:new,:create,:index]
end
