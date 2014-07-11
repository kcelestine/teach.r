Rails.application.routes.draw do
  devise_scope :user do
    root to: "courses#index"
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end

  devise_for :users
  resources :users, except: [:index]
  resources :questions, only: [:edit, :new, :update, :create, :index]

  # make all routes for courses
  resources :courses, except: [:destroy]

  resources :courses do
    resources :sessions, only: [:edit, :new, :update, :create, :index, :show]
  end


  #before_filter :authenticate_user!
end
