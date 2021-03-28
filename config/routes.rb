Rails.application.routes.draw do
  namespace :v1 do
    resources :employees
    
    resources :partners do
      resources :projects
    end

    resources :registrations, only: [:create]
  
    
    root to: "static#home"

    resources :sessions, only: [:create]
    delete :logout, to: "sessions#logout"
    get :logged_in, to: "sessions#logged_in"
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end

 
end
