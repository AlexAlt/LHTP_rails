Rails.application.routes.draw do
  resources :sections do
    resources :lessons
  end
  root 'sections#index'
end
