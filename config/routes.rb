Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#index'
  
  resources :books, only: :index do
    collection do
      get 'search'
    end
  end
  
  resources :books do
    resources :reviews
  end
  resources :books do
    resources :likes, only: [:create,:destroy]
  end
end
