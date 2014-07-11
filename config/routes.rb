Rails.application.routes.draw do

  devise_scope :user do
    root to: "courses#index"
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end
  devise_for :users
  resources :users, except: [:index]
  resources :questions, only: [:edit, :new, :update, :create, :index]
  resources :sessions, only: [:edit, :new, :update, :create, :index, :show]
  resources :courses, except: [:destroy]
end
