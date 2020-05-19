Rails.application.routes.draw do
  root 'homes#top'
  get 'home/about' => 'homes#about'

  resources :books, only: [:new, :create, :index, :show]

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
