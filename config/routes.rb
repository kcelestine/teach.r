Rails.application.routes.draw do
  devise_for :users
  root to: "courses#index"
  resources :questions, only: [:new, :create, :edit, :update]
  resources :sessions, only: [:new, :create, :edit, :update, :show]
  resources :courses, except: [:destroy]
  get "courses/:id/student/new", to: "courses#new_student", as: "new_student"
  post "courses/:id/student", to: "courses#create_student"
end
