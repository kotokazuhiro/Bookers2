Rails.application.routes.draw do
  devise_for :users
  get 'home/about', to: "homes#about", as: "about"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root to: "homes#top"
resources :books, only: [:index, :show, :edit, :update, :destroy, :create]
resources :users, only: [:index, :show, :edit, :update]
end
