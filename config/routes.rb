Rails.application.routes.draw do
  resources :menu_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/about', to: 'static_pages#about'
  root "menu_items#index"



end
