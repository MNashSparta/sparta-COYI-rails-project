Rails.application.routes.draw do
  resources :projects
  resources :chapters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "chapters#index"

  resources :users do
    member do
      get :confirm_email
    end
  end
end
