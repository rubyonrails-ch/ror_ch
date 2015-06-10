Rails.application.routes.draw do
  resources :jobs, except: [:index]

  post 'join_meetup/:meetup_id', to: 'home#join_meetup'
  root 'home#index'
end
