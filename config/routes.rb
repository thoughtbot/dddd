Dddd::Application.routes.draw do
  root :to => 'registrations#new'

  resources :registrations, :only => [:new, :create]
end
