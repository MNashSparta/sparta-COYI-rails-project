Rails.application.routes.draw do

  get 'circle/global', to: 'circle#global', as: 'global'
  get 'circle/chapter', to: 'circle#chapter', as: 'chapter'
  get 'circle/advocate', to: 'circle#advocate', as: 'advocate'
  get 'news', to: 'news#index', as: 'news'
  get 'circle/rules', to: 'circle#rules', as: 'rules'
  get '/stories',  to: 'sucess#stories', as: 'stories'
  root to: 'home#landing'
  get 'home', to: 'home#home', as: 'home'
<<<<<<< HEAD
=======
  get 'home/home'
  get 'home/landing'
>>>>>>> ba55d6ea7afa87d3912d0894f60b460e0caeed5b
  get 'about', to: 'about#about', as: 'about'
  get 'contact', to: 'about#contact', as: 'contact'
  get 'faq', to: 'about#faq', as: 'faq'
  get 'resources', to: 'resources#resources', as: 'resources'
<<<<<<< HEAD
  get 'projects', to: 'projects#index', as: 'projects'
  get 'news', to: 'news#index', as: 'news'

=======
>>>>>>> ba55d6ea7afa87d3912d0894f60b460e0caeed5b

  resources :challenges
  resources :resources
  resources :news
  resources :projects
  resources :chapters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
