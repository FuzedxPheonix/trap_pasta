Rails.application.routes.draw do
  resources :menus
  resources :menu_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/about', to: 'static_pages#about'
  root "menus#index"



end
