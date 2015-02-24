Rails.application.routes.draw do

  resources :comments

  root 'welcome#index'

  get 'welcome/index'

  get "party/index"
end
