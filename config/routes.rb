Rails.application.routes.draw do
    
  get 'volunteers/show'
  get 'testimonials/new'
  get 'testimonials/create'
  resources :posts
  resources :profiles
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
    root 'home#index'

  #Users Routes
  resources :users, :only => [:new, :create, :show]
  
  #Session Routes
  resources :sessions, :only => [:new, :create]
  controller :sessions do
      get '/logout' => :destroy, as: :logout
  end
  
  controller :posts_status do
      get '/show_statuses' => :show, as: :posts_status
      get '/decision/:id/:status' => :give_decision, as: :decision
      get 'apply/:id/:s_id' => :apply, as: :apply
      get 'student_decision/:id/:status' => :student_give_decision, as: :student_decision
  end
  
  controller :volunteers do
      get '/myvolunteers/:id' => :show, as: :my_volunteer
      get '/remove_volunteer/:id' => :destroy, as: :remove_volunteer
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
