Rails.application.routes.draw do
  resources :charges, only: [:new, :create]
  get 'charges/new'

  get 'charges/create'

  get 'customers/index'

  resources :orders
  get 'cart/index'

  resources :contacts
  resources :abouts
  get 'categories/index'

  get 'categories/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :mangas

  get '/' => 'mangas#index', as: 'index'
  post '/' => 'mangas#index', as: 'home'
  get '/categories' => 'categories#index', as: 'categories'
  get '/about' => 'abouts#index', as: 'about_index'
  get '/contact' => 'contacts#index', as: 'contact_index'
  get '/cart' => 'cart#index', as: 'cart'
  post '/mangas/:id' => 'mangas#add_to_cart', as: :add
  delete '/mangas/remove_image/:id' => 'mangas#remove_image', as: :remove_image
  delete '/cart' => 'cart#clear', as: :clear
  get '/cart/checkout' => 'cart#checkout', as: 'checkout'
  post '/customer' => 'customers#index', as: 'customers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
