Rails.application.routes.draw do

  root to: "users#welcome"

  resources :openhours, except: [:destroy]

  resources :volunteers, except: [:destroy]

end
