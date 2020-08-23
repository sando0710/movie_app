Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users

  root 'movies#index'

  resources :movies do

  end
end
