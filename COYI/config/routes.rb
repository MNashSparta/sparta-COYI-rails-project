Rails.application.routes.draw do
  get 'profile/projects/new', to: 'projects#new', as: 'new_project'
  get 'profile/projects/:id', to: 'projects#show_user_project', as: 'show_user_project'

  root to: 'home#landing'

  get 'circle/global', to: 'circle#global', as: 'global'
  get 'circle/chapter', to: 'circle#chapter', as: 'chapter'
  get 'circle/advocate', to: 'circle#advocate', as: 'advocate'
  get 'circle/rules', to: 'circle#rules', as: 'rules'

  get 'home', to: 'home#home', as: 'home'
  get 'about', to: 'about#about', as: 'about'
  get 'contact', to: 'about#contact', as: 'contact'
  get 'faq', to: 'about#faq', as: 'faq'
  get 'resources', to: 'resources#resources', as: 'resources'
  get 'success', to: 'success#success', as: 'stories'


  resources :challenges
  resources :resources
  resources :news
  resources :projects
  resources :chapters

  devise_for :users, controllers: {registrations: 'users/registrations'}
  get 'profile/projects', to: 'projects#user_projects', as: 'user_projects'

  resources :projects, only: [:create, :new]

  get 'about', to: 'about#about'
end
