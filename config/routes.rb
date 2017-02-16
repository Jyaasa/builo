Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/categories' => 'pages#categories'
  get '/search' => 'pages#search'
  get '/company/show' => 'pages#show'
  resources :companies, only: [:index, :show]
end
