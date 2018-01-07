Rails.application.routes.draw do

  root 'static_pages#index'

  resources :images
  resources :careers

  get 'images/show'
  get 'images/edit'
  get 'images/new'
  get 'images/index'

  get 'home' => 'static_pages#index'
  get 'contact' => 'static_pages#contact'
  get 'about' => 'static_pages#about'

  devise_for :users
end
