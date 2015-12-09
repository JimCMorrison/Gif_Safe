Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/privacy'
  resources :gifs

  authenticated :user do
    root'gifs#index', as: "authenticated_root"
  end

  root 'home#index'

end
