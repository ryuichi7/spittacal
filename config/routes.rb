Rails.application.routes.draw do
  root to: 'pages#home'
  resources :calendar, only: [:new, :create, :show, :destroy]
end
