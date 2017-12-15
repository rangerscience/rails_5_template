Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  root to: "home#index"

  get 'home/access_denied', to: 'home#access_denied'
end
