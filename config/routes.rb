Rails.application.routes.draw do
  resources :abouts
  get 'categories/index'

  get 'categories/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :mangas

  get '/' => 'mangas#index', as: 'index'
  get '/categories' => 'categories#index', as: 'categories'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
