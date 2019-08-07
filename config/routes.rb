Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :restaurants, only: [:index]
  end
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
