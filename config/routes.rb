Rails.application.routes.draw do
  root to: "home#show"
  post 'tags', to: 'home#create_tags', as: 'create_tags'
  resources :paintings
  resources :tags
end
