Rails.application.routes.draw do
  get 'about/about'
  get 'about/contact'
  get 'about/faq'
  resources :projects
  resources :chapters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "chapters#index"

  get 'about', to: 'about#about'

end
