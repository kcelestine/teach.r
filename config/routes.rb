Rails.application.routes.draw do
  root to: "courses#index"
  resources :users, except: [:index]
  resources :questions, only: [:edit, :new, :update, :create, :index]
  resources :sessions, only: [:edit, :new, :update, :create, :index, :show]
  resources :courses, except: [:destroy]
end
