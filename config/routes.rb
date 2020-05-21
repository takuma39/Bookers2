Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  resources :users, only: [:show, :edit, :index]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
