Rails.application.routes.draw do

  root to: 'homepages#index'

  resources :stations, except: :new

  resources :stops

  resources :lines
end
