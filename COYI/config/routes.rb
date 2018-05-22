Rails.application.routes.draw do
  get 'user/create'
  resources :projects
  resources :chapters
  devise_for :users, controllers: {registrations: 'users/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "chapters#index"
end
