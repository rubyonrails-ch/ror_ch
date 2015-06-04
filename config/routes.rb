Rails.application.routes.draw do
  resources :jobs
  root 'home#index'
end
