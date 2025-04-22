Rails.application.routes.draw do
  resources :tracks
  resources :albums
  resources :artists
  devise_for :users

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :playlists do
    member do
      post 'add_track'
      delete 'remove_track/:track_id', action: :remove_track, as: :remove_track
    end
  end
  
  # Defines the root path route ("/")
  root "home#index"
end
