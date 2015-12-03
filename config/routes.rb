Rails.application.routes.draw do
  get 'home/index'

  get 'home/privacy'

  root 'home#index'

  resources :gifs
end
