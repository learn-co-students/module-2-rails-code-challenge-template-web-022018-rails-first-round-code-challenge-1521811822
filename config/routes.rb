Rails.application.routes.draw do
  get '/superheroes/search', to: 'superheroes#index'
  resources :superpowers
  resources :superheroes

end
