BoatProjects::Application.routes.draw do
  
  devise_for :users
  resources :tasks
  resources :services
  resources :materials

  root :to => "tasks#index"

end
