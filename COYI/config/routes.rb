Rails.application.routes.draw do
  resources :hundred_day_challenges
  get 'resources/index'
  resources :projects
  resources :chapters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#landing"

end
