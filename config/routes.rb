Rails.application.routes.draw do
  resources :users, except: [:index]
  resources :questions, only: [:edit, :new, :update, :create, :index]
end
