Rails.application.routes.draw do
  #####Routes for Books#########
  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show'

  # resources :reviews
  # resources :users
  # resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
