Rails.application.routes.draw do


  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get '/games/create', to:'games#create',as: 'create_game'
  get '/games/:id/try1/', to: 'games#try1', as: 'try1_game' 
  get '/games/:id/success', to: 'games#success', as: 'success_game'
  get '/games/:id/try2', to: 'games#try2', as: 'try2_game'
  get '/games/:id/final', to: 'games#final', as: 'final_game'
  get '/games/:id/fail', to: 'games#fail', as: 'fail_game'

  get 'sessions/new', to: 'sessions#new', as: 'new_session'
  post 'sessions/create', to: 'sessions#create'
  #get 'sessions/destroy'
  get 'log_out', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :show]
  # get 'users/new', to: 'users#new', as: 'new_user'
  # get 'users/show', to: 'users#show'
  # post 'users/create', to: 'users#create', as: 'users'
  

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
