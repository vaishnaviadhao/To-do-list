Rails.application.routes.draw do
 
  devise_for :students
  devise_for :guides
  namespace :dashboard do
    authenticated :student do
        resources :subjects, module: "student", :only => [:show, :index]
    end

    authenticated :teacher do
        resources :subjects, module: "teacher"
    end

    root to: "dashboard#index"
end
  
  root to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
