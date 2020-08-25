Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :categories do
    resource :events, only: [ :new, :create, :show ]
  end
  resource :events, only: [ :destroy ]
end

