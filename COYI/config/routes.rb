Rails.application.routes.draw do
<<<<<<< HEAD
  get '/stories',  to: 'sucess#stories'
=======
>>>>>>> be582c4aa04c8a708b5f7a2620670801e03a8004
  root to: 'home#landing'
  get 'home', to: 'home#home', as: 'home'
  get 'home/home'
  get 'home/landing'
  get 'about/about'
  get 'about/contact'
  get 'about/faq'
  get 'resources', to: 'resources#resources'


  resources :resources
  resources :hundred_day_challenges
  resources :news
  resources :projects
  resources :chapters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get 'about', to: 'about#about'

end
