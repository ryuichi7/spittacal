Rails.application.routes.draw do
  root to: 'pages#home'
  resources :calendars, only: [:new, :create, :show, :destroy]
end
