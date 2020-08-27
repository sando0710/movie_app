Rails.application.routes.draw do

  devise_for :users

  root 'movies#index'

  resources :movies do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
    resources :comments
  end
end
