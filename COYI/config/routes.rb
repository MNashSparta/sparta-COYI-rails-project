Rails.application.routes.draw do

  root to: 'home#landing'

  get 'circle/global', to: 'circle#global', as: 'global'
  get 'circle/chapter', to: 'circle#chapter', as: 'chapter'
  get 'circle/advocate', to: 'circle#advocate', as: 'advocate'
  get 'circle/rules', to: 'circle#rules', as: 'rules'
  get 'news', to: 'news#index', as: 'news'
  get 'home', to: 'home#home', as: 'home'
  get 'about', to: 'about#about', as: 'about'
  get 'contact', to: 'about#contact', as: 'contact'
  get 'faq', to: 'about#faq', as: 'faq'
  get 'resources', to: 'resources#resources', as: 'resources'
  get 'projects', to: 'projects#index', as: 'projects'
  get 'success', to: 'success#success', as: 'stories'


  resources :challenges
  resources :resources
  resources :news
  resources :projects
  resources :chapters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
