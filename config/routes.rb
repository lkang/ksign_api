Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  jsonapi_resources :songs
  jsonapi_resources :events
  jsonapi_resources :events_songs
  jsonapi_resources :performances
end
