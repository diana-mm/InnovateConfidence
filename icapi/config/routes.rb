Rails.application.routes.draw do
  resources :answers
  resources :attempts
  resources :questions
  resources :scenarios
  resources :games
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
