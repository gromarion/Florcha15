Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
	  get 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
	end
  get 'comments/new'
  post 'comments/create'
  root 'welcome#index'
  get 'welcome/index'
  get 'party/index'
  get 'invited_stars/index'
end
