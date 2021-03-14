Rails.application.routes.draw do
  namespace :v1 do
    resources :employees
    
    resources :partners do
      resources :projects
    end
  
    resources :sessions, only: [:create]
    root to: "static#home"
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
