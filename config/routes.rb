Rails.application.routes.draw do
  root "bills#index"

  resources :bills, only: %i[index create]
end
