Rails.application.routes.draw do
  get 'welcome/index'
  get 'sessions/new'
  get 'books/index'
  get 'users/index'
  resources :books, :users
  resource :session, only: [:new, :create, :destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'books#index'
  root 'sessions#new'
end
