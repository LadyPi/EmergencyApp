Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  ########################################################################
 
  #Home/Launch Page/New Message##

  # Index/Home Page

  # root to: 'index#home'
  get '/', to: 'index#home', as: "Home"
  
  # Future: New Message(upon sign in) 
  
  ########################################################################

  ##Service Overview##
  
  # About Service/How To Use Service Page
  get '/about', to: 'about#index'

  ########################################################################

  ##USERS: Log In/Session##

  # New User Session
  get '/signin', to: 'sessions#new', as: "signin"

  # Create User Session
  post '/sessions', to: 'sessions#create'

  ##########################################
  
  ##USERS: Log Out/Session##

  # Terminate User Session
  delete '/sessions', to: 'sessions#delete'

  ########################################################################

  # Users

  resources :users

  ########################################################################

  # Todos

  resources :tasks

  ########################################################################
  
  # Contacts

  resources :events

  ########################################################################

  # Contacts

  resources :contacts

########################################################################

# Messages

  resources :messages
end
