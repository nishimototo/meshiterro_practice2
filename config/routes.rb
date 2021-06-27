Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :post_images, only: [:index, :show, :new, :create, :destroy]
end
