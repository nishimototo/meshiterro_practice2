Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users
  root 'homes#top'

  resources :post_images, only: [:index, :show, :new, :create, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update]

end
