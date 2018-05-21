Rails.application.routes.draw do
  get 'about', to: 'about#about'
  get 'about/about'
  get 'about/contact'
  get 'about/faq'
  root to: 'home#landing'
  get 'home', to: 'home#home', as: 'home'
  get 'home/home'
  get 'home/landing'
  resources :projects
  resources :news
  resources :chapters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
