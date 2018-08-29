Rails.application.routes.draw do
  get 'books/index'
  resources :books, :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#index'
end
