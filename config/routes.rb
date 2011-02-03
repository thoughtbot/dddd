Dddd::Application.routes.draw do
  root :to => 'registrations#new'

  resources :registrations, :only => [:index, :new]
  resources :talks,         :only => [:index, :show]
  resources :designers,     :only => [:index]
  resources :developers,    :only => [:index]
  resources :startups,      :only => [:index, :show]
  resources :opportunities, :only => [:index]
  resources :schools,       :only => [:index]

  match 'pages/what' => 'talks#index'
end
