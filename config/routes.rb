Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:new, :index, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: 'about'
end
