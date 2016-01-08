Rails.application.routes.draw do
  resources :posts

  resource :bugs, only: :show

  resources :notifications do
    get :touch, on: :collection
  end

  resource :cache, only: :show

  root 'notifications#index'
end
