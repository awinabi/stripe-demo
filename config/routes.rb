Rails.application.routes.draw do
  resources :credit_cards
  resources :products
  resource :charges
  get 'pages/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'charges#new'
end
