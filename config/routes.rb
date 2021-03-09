Rails.application.routes.draw do
  resources :pieces, only: :index
  resources :comments, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
