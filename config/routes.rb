Rails.application.routes.draw do
  resources :works do
    get 'import/new', to: 'work#new_import'
    post '', to: 'work#import'
  end
  root to: 'reporte#upload'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
