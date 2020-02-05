Rails.application.routes.draw do

  resources :printers
  get '/works/new_import', to: 'works#new_import'
  post '/works/import', to: 'works#import'

  resources :works
  
  root to: 'reporte#upload'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
