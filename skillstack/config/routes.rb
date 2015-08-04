Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :categories
  resources :bookings
  resources :lessons
  resources :users

  root "lessons#index"
  get "/login", to: "sessions#new"
  delete "/logout", to: "sessions#destroy"
  get "/teacherlessons", to: "lessons#teacher_lessons"

end
