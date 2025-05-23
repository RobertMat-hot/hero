Rails.application.routes.draw do
  resources :home, only: [:index, :create, :show, :destroy] do
    collection do
       get 'all_hero'
       get 'team'
       get 'custom'
       post 'create_multiple'
     end
  end
  root 'home#index'
  #get "home/index"
  get "home/create"
  get "home/team"
  get "home/custom"
  get "home/all_hero"
  post "home/team" => 'home#team'
  post "home/custom" => 'home#custom'
  post "home/index" => 'home#index'
  post "home/create" => 'home#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
