Rails.application.routes.draw do
  get '/index' => 'articles#index'
  resources :articles
  resources :users
end
