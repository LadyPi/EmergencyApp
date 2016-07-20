Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  ########################################################################
 
  #Home/Launch Page/New Message##

  # Index/Home Page
  #New Messages Will Start From Here
  # root to: 'index#home'
  get '/', to: 'index#home'
  
  # New Message 
  

  ########################################################################

  ##Service Overview##
  
  # About Service/How To Use Service Page
  get '/about', to: 'about#index'

  ########################################################################

 ##USERS: Sign-Up/Profile##

  # get "/sign_in", to: "sessions#new"

  # post "/sessions", to: "sessions#create"


  ##########################################

  ##USERS: Log In/Session##

  # New User Session
  get '/sign_in', to: 'sessions#new'

  # Create User Session
  post '/sessions', to: 'sessions#create'

  # why no id?

  ##########################################
  
  ##USERS: Log Out/Session##

  # Terminate User Session
  delete '/sessions', to: 'sessions#destroy'

  # why no id?
  # On Click 'Log Out'

  ########################################################################

  # New User Profile Page
  get '/users/new', to: 'users#new'

  # In the future: all members on same profile

  # Create User Profile Page
  post '/users', to: 'users#create'

  # Show User Profile Page
  get '/users/:id', to: 'users#show', as: 'user'

  # (can you show and edit on same page)

  # Edit User Profile Page
  get '/users/:id/edit', to: 'users#edit', as: 'user_edit'

  # UPDATE

   # Delete User Profile Page
  delete '/users/:id', to: 'users#destroy'

  # Just for testing
  get "/users", to: "users#index"

  ########################################################################

  # AJAX on page?

  # ##Emergency List Of To Dos##

  # # New Emergency To Do List Page
  # get '/todos/new', to: 'todos#new'

  # # Create Emergency To Do List Page
  # post '/todos', to: 'todos#create'

  # # Show Emergency To Do List Page
  # get '/todos/:id', to: 'todos#show'

  # # Edit Emergency To Do List Page
  # get '/todos/:id/edit', to: 'todos#edit'

  # # Update Section Of Emergency To Do List Page
  # patch '/todos/:id', to: 'todos#update'

  # # Delete Emergency To Do List Page
  # delete '/todos/:id', to: 'todos#destroy'

  ########################################################################

# All Lists (By Title)
  get '/lists', to: 'lists#index'

   # New Emergency List
  get '/lists/new', to: 'lists#new'

  # Create Emergency List (unseen)
  post '/lists', to: 'lists#create'
  
  # Show Emergency List
  get '/lists/:id', to: 'lists#show'

  # Edit Emergency List
  get '/lists/:id/edit', to: 'lists#edit'

  # Patch Emergency List (unseen)
  patch '/lists/:id/edit', to: 'lists#update'

  # Delete Emergency List (unseen)
  delete '/lists/:id', to: 'lists#destroy'

  ########################################################################

  ##Emergency Contacts##

  # All Contacts
  get '/contacts', to: 'contacts#index'

   # New Emergency Contact
  get '/contacts/new', to: 'contacts#new'

  # Create Emergency Contacts (unseen)
  post '/contacts', to: 'contacts#create'
  
  # Show Emergency Contact
  get '/contacts/:id', to: 'contacts#show'

  # Edit Emergency Contacts
  get '/contacts/:id/edit', to: 'contacts#edit'

  # Patch Emergency Contacts (unseen)
  patch '/contacts/:id/edit', to: 'contacts#update'

  # Delete Emergency Contacts (unseen)
  delete '/contacts/:id', to: 'contacts#destroy'


########################################################################

# All Messages
  get '/messages', to: 'messages#index'

   # New Message
  get '/messages/new', to: 'messages#new'

  # Create Message (unseen)
  post '/messages', to: 'messages#create'
  
  # Show Message
  get '/messages/:id', to: 'messages#show'

  # # Delete Messages (unseen)
  # delete '/messages/:id', to: 'messages#destroy'
  
  post '/messages/send_text' => 'messages#send_text'

end
  
########################################################################
















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