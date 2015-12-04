Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  get 'home/privacy'

  root 'home#index'

  resources :gifs
end
