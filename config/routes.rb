Rails.application.routes.draw do
  resources :lessons
  root 'lessons#index'
end
