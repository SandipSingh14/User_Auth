Rails.application.routes.draw do
<<<<<<< HEAD
=======
#match ':controller(/:action(/:id))(.:format)'

>>>>>>> 74c1274bb4dcdbda7c2d5a41d973a3cdcba5676e
  get 'sessions/login'

  get 'sessions/home'

  get 'sessions/profile'

  get 'sessions/setting'

<<<<<<< HEAD
  get 'users/new'
# match is changed with get
get ':controller(/:action(/:id))(.:format)'
root :to => "sessions#login"
get "signup", :to => "users#new"
get "login", :to => "sessions#login"
get "logout", :to => "sessions#logout"
get "home", :to => "sessions#home"
get "profile", :to => "sessions#profile"
get "setting", :to => "sessions#setting"
###  # The priority is based upon order of creation: first created -> highest priority.
=======
root :to => "sessions#login"

get "signup", :to => "users#new"

get "login", :to => "sessions#login"

get "logout", :to => "sessions#logout"

get "home", :to => "sessions#home"

get "profile", :to => "sessions#profile"

get "setting", :to => "sessions#setting"

  # The priority is based upon order of creation: first created -> highest priority.
>>>>>>> 74c1274bb4dcdbda7c2d5a41d973a3cdcba5676e
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
<<<<<<< HEAD
  #     resources :products
  #   end
=======
  #      resources :products
  #     end
>>>>>>> 74c1274bb4dcdbda7c2d5a41d973a3cdcba5676e
end
