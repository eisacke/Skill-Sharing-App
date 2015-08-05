Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :categories
  resources :bookings
  resources :lessons
  resources :users
  resources :home, only: [:index]

  root 'static_pages#home'
  get "/login", to: "sessions#new"
  delete "/logout", to: "sessions#destroy"
  get "/mylessonbookings", to: "lessons#teacher_lessons"

end
