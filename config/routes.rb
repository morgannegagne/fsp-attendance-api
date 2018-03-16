Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :update, :create]
      resources :signins, only: [:index, :create]
    end
  end
end
