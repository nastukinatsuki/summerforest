Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root 'kokkyos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'kokkyos/question' => 'kokkyos#question'
  resources :kokkyos do
   resources :likes, only: [:create, :destroy]
   resources :comments, only: [:create]
  end


end
