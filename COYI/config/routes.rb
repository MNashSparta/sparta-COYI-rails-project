Rails.application.routes.draw do
  root to: 'home#landing'
  get 'home', to: 'home#home', as: 'home'
  get 'about', to: 'about#about', as: 'about'
  get 'contact', to: 'about#contact', as: 'contact'
  get 'faq', to: 'about#faq', as: 'faq'
  get 'resources', to: 'resources#resources', as: 'resources'
  get 'projects', to: 'projects#index', as: 'projects'
  get 'news', to: 'news#index', as: 'news'


  resources :resources
  resources :hundred_day_challenges
  resources :news
  resources :projects
  resources :chapters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
