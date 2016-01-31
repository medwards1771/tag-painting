Rails.application.routes.draw do
  root to: "home#show"
  post 'tags', to: 'home#create_tags', as: 'create_tags'
  delete 'tags', to: 'home#destroy_tags', as: 'destroy_tags'
  resources :paintings
  resources :tags
end
