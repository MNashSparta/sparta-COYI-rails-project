Rails.application.routes.draw do
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
  get 'profile/projects', to: 'projects#user_projects', as: 'user_projects'
  resources :projects, only: [:create, :new]

  get 'about', to: 'about#about'


end
