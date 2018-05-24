Rails.application.routes.draw do

  get 'profile/projects/new', to: 'projects#new', as: 'new_project'
  get 'profile/projects/:id', to: 'projects#show_user_project', as: 'show_user_project'
  get 'profile/projects', to: 'projects#user_projects'
  get 'profile/my_resources/new', to: 'my_resources#new', as: 'new_my_resource'
  get 'profile/my_resources/:id', to: 'my_resources#show', as: 'show_user_my_resource'
  get 'profile/me',         to: 'profile#profile',    as: 'user_profile'
  get 'profile/:id',        to: 'profile#show'

  root to: 'home#landing'

  get 'circle/global',    to: 'circle#global',      as: 'global'
  get 'circle/chapter',   to: 'circle#chapter',     as: 'chapter'
  get 'circle/advocate',  to: 'circle#advocate',    as: 'advocate'
  get 'circle/rules',     to: 'circle#rules',       as: 'rules'
  get 'news',             to: 'news#index',         as: 'news'
  get 'home',             to: 'home#home',          as: 'home'
  get 'about',            to: 'about#about',        as: 'about'
  get 'contact',          to: 'about#contact',      as: 'contact'
  get 'faq',              to: 'about#faq',          as: 'faq'
  get 'resources',        to: 'my_resources#index', as: 'resources'
  get 'success',          to: 'success#success',    as: 'stories'





  resources :challenges
  resources :resources
  resources :my_resources
  resources :news
  resources :projects
  resources :chapters

  devise_for :users, controllers: {registrations: 'users/registrations'}
  get 'profile/projects', to: 'projects#user_projects', as: 'user_projects'
  get 'profile/my_resources', to: 'my_resources#user_my_resource', as: 'user_my_resources'
  get 'chapter/news', to: 'news#chapter_news', as: 'chapter_news'

  resources :projects, only: [:create, :new]
  resources :my_resources, only: [:create, :new]

  get 'about', to: 'about#about'

  # Moved to the bottom to fix sign in issues

end
