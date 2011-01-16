Dddd::Application.routes.draw do
  root :to => 'registrations#new'

  resources :registrations, :only => [:new, :create]
  resources :talks,         :only => [:index]

  match 'pages/what' => 'talks#index'
end
