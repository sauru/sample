Rails.application.routes.draw do
 
  post 'sign_in/welcome' => 'sign_in#welcome'

  #get 'reset_pass/' => 'reset_pass#reset'
  #post 'reset_pass/sub' => 'reset_pass#sub'
  get 'user/' => 'user#new'
  #post 'user/' => 'reset_pass#sub'
  post 'reset_pass/sub' => 'user#create'
  post 'user/' => 'user#new'
  get '/new' => 'user#new'
  get '/create' => 'user#create'
  get 'reset_pass/sub' => 'user#create'
  post 'user/create' => 'user#create'
  post 'user/sub' => 'reset_pass#sub'
  #post 'user/new' => 'user#sub'
  get 'user/reset' => "user#reset", :as => :reset_password
  get 'user/sub' => "reset_pass#sub", :as => :sign_in


  # The priority is based upon order of creation: first created -> highest priority.
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
  #     resources :products
  #   end
end
