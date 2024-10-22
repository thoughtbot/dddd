Dddd::Application.routes.draw do
  root :to => 'registrations#new'

  resources :registrations, :only => [:index, :new]
  resources :talks,         :only => [:index, :show]
  resources :designers,     :only => [:index, :show]
  resources :developers,    :only => [:index, :show]
  resources :startups,      :only => [:index, :show]
  resources :opportunities, :only => [:index]
  resources :schools,       :only => [:index, :show]
  resource  :party,         :only => [:show]
  resources :users,         :only => [:update]

  match 'pages/what' => 'talks#index'

  match "/auth/:provider/callback" => "sessions#create"
end
