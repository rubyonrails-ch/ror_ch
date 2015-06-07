Rails.application.routes.draw do
  resources :jobs
  post 'join_meetup/:meetup_id', to: 'home#join_meetup'
  root 'home#index'
end
