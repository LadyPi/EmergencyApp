Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  ########################################################################
 
  ##Home/Launch Page/New Message##

  # Index/Home Page
 #  root to: 'index#show'

 #  # New Message 
 #  POP UP? TEST
 #  AJAX?
 #  TEST

 #  ########################################################################

 #  ##Service Overview##
  
 #  # About Service/How To Use Service Page
 #  get '/about', to: 'about#show'

 #  ########################################################################

 # ##USERS: Sign-Up/Profile##

 #  # New User Profile Page
 #  get '/signup', to: 'users#new'

 #  # Create User Profile Page
 #  post '/users', to: 'users#create'

 #  # Show User Profile Page
 #  get '/users/:id', to: 'users#show'

 #  (can you show and edit on same page)

 #  # Edit User Profile Page
 #  get '/users/:id/edit', to: 'users#edit'

 #   # Delete User Profile Page
 #  delete '/users/:id', to: 'users#destroy'

 #  ########################################################################

 # ##USERS: Log In/Session##

 #  # New User Session
 #  get '/signin', to: 'sessions#new'

 #  # Create User Session
 #  post '/sessions', to: 'sessions#create'

 #  why no id?

 #  ##########################################
  
 #  ##USERS: Log Out/Session##

 #  # Terminate User Session
 #  delete '/sessions', to: 'sessions#destroy'

 #  why no id?
 #  On Click 'Log Out'

 #  ########################################################################

 #  ##Emergency List Of To Dos##
  
 #  # New Emergency To Do List Page
 #  get '/todos', to: 'todos#new'

 #  # Create Emergency To Do List Page
 #  post '/todos', to: 'todos#create'

 #  # Show Emergency To Do List Page
 #  get '/todos/:id', to: 'todos#show'

 #  # Edit Emergency To Do List Page
 #  get '/todos/:id/edit', to: 'todos#edit'

 #  # Update Section Of Emergency To Do List Page
 #  patch '/todos/:id', to: 'todos#update'

 #  # Delete Emergency To Do List Page
 #  delete '/todos/:id', to: 'todos#destroy'

 #  ########################################################################

 #  ##Emergency Titles##
 
 #  Show ALL Emergency Titles
 #  get '/titles', to: 'titles#show'
 
 #  DO NOT need CRUD for this: can simply render titles to click on 
 #  and make sure disappear when deleted in get '/todos/:id', to: 'todos#show'
  
 #  ########################################################################

 #  ##Emergency Contacts##

 #  # New Emergency Contacts
 #  get '/contacts', to: 'contacts#new'

 #  # Create Emergency Contacts
 #  post '/contacts', to: 'contacts#create'
  
 #  # Show Emergency Contacts
 #  get '/contacts/:id', to: 'contacts#show'

 #  # Edit Emergency Contacts
 #  get '/contacts/:id/edit', to: 'contacts#edit'

 #  # Delete Emergency Contacts
 #  delete '/contacts/:id', to: 'contacts#destroy'

end
  


















  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end