Rails.application.routes.draw do

  root 'static_pages#index'

  get 'home' => 'static_pages#index'
  get 'contact' => 'static_pages#contact'
  get 'about' => 'static_pages#about'

  resources :static_pages
  resources :careers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
