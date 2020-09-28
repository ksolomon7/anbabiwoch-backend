Rails.application.routes.draw do
  #####Routes for Books#########
  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show'
  post '/books', to: 'books#create'
  delete '/books/:id', to: 'books#destroy'

  ########Routes for reviews############
  get '/reviews', to: 'reviews#index'
  get '/reviews/:id', to: 'reviews#show'
  patch '/reviews/:id', to:'reviews#update'

  # resources :reviews
  # resources :users
  # resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
