Commuterapp::Application.routes.draw do

  devise_for :users

  resources :destinations
  resources :commute_types
  resources :commutes

  root :to => 'dashboard#intro'

  get 'dashboard' => 'dashboard#main'
  get 'dashboard/:id', :to => 'dashboard#show', :as => 'dashboard'
end
