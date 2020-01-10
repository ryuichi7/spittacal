Rails.application.routes.draw do
  get 'calendar/new'
  get 'calendar/create'
  get 'calendar/show'
  get 'calendar/delete'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
