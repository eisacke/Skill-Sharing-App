Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :categories
  resources :bookings
  resources :lessons
  resources :users
  resources :home, only: [:index]

  resources :lessons do 
    member do
      put "like", to: "lessons#upvote"
      put "dislike", to: "lessons#downvote"
    end
  end

  root 'static_pages#home'
  get "/login", to: "sessions#new"
  delete "/logout", to: "sessions#destroy"
  get "/mylessonbookings", to: "lessons#teacher_lessons"

end
