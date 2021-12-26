require 'sidekiq/web'
require 'sidekiq-scheduler/web'


Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "prices#index"
  mount Sidekiq::Web => '/sidekiq'
end
