Rails.application.routes.draw do
  resources :posts
  get '/pages', to: 'pages#index'
  post '/pages', to: 'pages#create'
end
