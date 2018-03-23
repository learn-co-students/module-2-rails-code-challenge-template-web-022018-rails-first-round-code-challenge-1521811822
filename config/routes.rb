Rails.application.routes.draw do
  resources :superpowers
  resources :superheroes
  resources :superpowers, only: [:index]
  resources :superheroes, only: [:index]

end
