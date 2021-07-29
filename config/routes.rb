Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :blogs, only: [:new, :create, :update, :destroy, :index] do
    collection do
    post :confirm
    end
  end
end
