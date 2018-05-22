Rails.application.routes.draw do
  root to: 'home#landing'
  get 'home', to: 'home#home', as: 'home'
  get 'home/home'
  get 'home/landing'
  resources :projects
  resources :chapters
  devise_for :users
  get 'profile/projects', to: 'projects#user_projects', as: 'user_projects'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: "chapters#index"
  resources :projects, only: [:create, :new]

end
