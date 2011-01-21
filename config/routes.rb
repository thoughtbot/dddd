Dddd::Application.routes.draw do
  root :to => 'registrations#new'

  resources :registrations, :only => [:new, :create]
  resources :talks,         :only => [:index, :show]
  resources :designers,     :only => [:index]
  resources :developers,    :only => [:index]
  resources :startups,      :only => [:index, :show]

  match 'pages/what' => 'talks#index'
end
