Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :comments
  root 'welcome#index'
  get 'welcome/index'
  get 'party/index'
end
