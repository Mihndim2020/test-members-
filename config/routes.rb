Rails.application.routes.draw do

  resources :posts, only: [:new, :create, :index]
  devise_for :users, :controllers => {registrations: 'registrations'}
  #root to: "home#index"
  root to: 'posts#index'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
