Rails.application.routes.draw do
  resources :superpowers, only: [:index,:show]
  resources :superheroes, only: [:index,:new,:show,:create,:search]

end
