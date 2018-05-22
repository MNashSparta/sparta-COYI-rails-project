Rails.application.routes.draw do
  resources :challenges
  get '/stories',  to: 'sucess#stories'
  root to: 'home#landing'
  get 'home', to: 'home#home', as: 'home'
  get 'home/home'
  get 'home/landing'
  get 'about/about'
  get 'about/contact'
  get 'about/faq'
  get 'resources', to: 'resources#resources'


  resources :resources
  resources :news
  resources :projects
  resources :chapters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get 'about', to: 'about#about'

end
