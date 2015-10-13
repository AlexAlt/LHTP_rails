Rails.application.routes.draw do
  resources :lessons
  resources :sections
  root 'sections#index'
end
