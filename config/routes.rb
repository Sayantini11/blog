Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :categories
  resources :articles
  resources :reviews
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
