Rails.application.routes.draw do
  devise_for :users
  root to: "courses#index"
  resources :questions, only: [:new, :create, :edit, :update]
  resources :sessions, only: [:new, :create, :edit, :update, :show]
  resources :courses, except: [:destroy]
  # match '/student/new',  to: 'courses#new_student',     via: 'get'
  # match '/student/new',  to: 'courses#create_student',     via: 'post'
  get "/student/new", to: "courses#new_student", as: "new_student"
  post "/student/new", to: "courses#new_student"
end
