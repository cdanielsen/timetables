Rails.application.routes.draw do
  resources :stations, except: :new

  resources :stops

  resources :lines
end
