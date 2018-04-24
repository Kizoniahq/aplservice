Rails.application.routes.draw do

resources :contacts, only: [:create, :new]
  resources :payments
  resources :orders do
    resource :locations
  end
  resources :accounts, only: [:index]
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pages, only: [:show]

  authenticated :user do
    root 'accounts#index', as: "authenticated_root"
  end
     root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
