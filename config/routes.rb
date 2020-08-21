Rails.application.routes.draw do
  devise_for :users

  root 'movies#index'

  resources :movies do
    # get 'new_movie', to: 'movies#new'
  end
end
