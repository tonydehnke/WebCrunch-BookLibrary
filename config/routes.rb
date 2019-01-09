require 'sidekiq/web'

Rails.application.routes.draw do
  resources :books
  devise_for :users
  root to: 'home#index'

  resources :pricing, only:[:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
