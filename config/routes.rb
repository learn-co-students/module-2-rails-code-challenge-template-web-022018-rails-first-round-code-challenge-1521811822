Rails.application.routes.draw do
  resources :superpowers
  resources :superheroes
  root 'pages#index'
  get '/search', to: 'superheroes#search', as: 'search_path'
end
