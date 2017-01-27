Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/categories' => 'pages#categories'
  get '/search' => 'pages#search'
  get '/company/show' => 'pages#show'
end
