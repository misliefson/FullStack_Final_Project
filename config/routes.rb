Rails.application.routes.draw do
  resources :mangas

  get '/' => 'mangas#index', as: 'index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
