Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

  resources :conversations, only: [:index, :create]
  resources :messages, only: [:create]

  mount ActionCable.server => '/cable'
end
