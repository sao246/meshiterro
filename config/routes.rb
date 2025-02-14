Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  resources :post_images, only: [:new, :create, :index, :show]
  devise_for :users
  root to: 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  resources :users, only: [:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
