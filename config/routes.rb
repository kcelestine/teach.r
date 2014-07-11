Rails.application.routes.draw do
  devise_for :users
  resources :questions, only: [:new, :create, :edit, :update]
  resources :sessions, only: [:new, :create, :edit, :update, :show]
  resources :courses, except: [:destroy]
end
