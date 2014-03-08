BoatProjects::Application.routes.draw do
  
  devise_for :users
  resources :tasks do
    member do
      get :row
    end
  end
  resources :services
  resources :materials

  root :to => "tasks#index"

end
