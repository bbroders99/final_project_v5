FinalProjectV5::Application.routes.draw do

  root "ideas#index"

  # Routes for the Bid resource:
  # CREATE
  get '/bids/new', controller: 'bids', action: 'new', as: 'new_bid'
  post '/bids', controller: 'bids', action: 'create', as: 'bids'

  # READ
  get '/bids', controller: 'bids', action: 'index'
  get '/bids/:id', controller: 'bids', action: 'show', as: 'bid'

  # UPDATE
  get '/bids/:id/edit', controller: 'bids', action: 'edit', as: 'edit_bid'
  patch '/bids/:id', controller: 'bids', action: 'update'

  # DELETE
  delete '/bids/:id', controller: 'bids', action: 'destroy'
  #------------------------------

  # Routes for the Image resource:
  # CREATE
  get '/images/new', controller: 'images', action: 'new', as: 'new_image'
  post '/images', controller: 'images', action: 'create', as: 'images'

  # READ
  get '/images', controller: 'images', action: 'index'
  get '/images/:id', controller: 'images', action: 'show', as: 'image'

  # UPDATE
  get '/images/:id/edit', controller: 'images', action: 'edit', as: 'edit_image'
  patch '/images/:id', controller: 'images', action: 'update'

  # DELETE
  delete '/images/:id', controller: 'images', action: 'destroy'
  #------------------------------

  # Routes for the Artist resource:
  # CREATE
  get '/artists/new', controller: 'artists', action: 'new', as: 'new_artist'
  post '/artists', controller: 'artists', action: 'create', as: 'artists'

  # READ
  get '/artists', controller: 'artists', action: 'index'
  get '/artists/:id', controller: 'artists', action: 'show', as: 'artist'

  # UPDATE
  get '/artists/:id/edit', controller: 'artists', action: 'edit', as: 'edit_artist'
  patch '/artists/:id', controller: 'artists', action: 'update'

  # DELETE
  delete '/artists/:id', controller: 'artists', action: 'destroy'
  #------------------------------

  # Routes for the Buyer resource:
  # CREATE
  get '/buyers/new', controller: 'buyers', action: 'new', as: 'new_buyer'
  post '/buyers', controller: 'buyers', action: 'create', as: 'buyers'

  # READ
  get '/buyers', controller: 'buyers', action: 'index'
  get '/buyers/:id', controller: 'buyers', action: 'show', as: 'buyer'

  # UPDATE
  get '/buyers/:id/edit', controller: 'buyers', action: 'edit', as: 'edit_buyer'
  patch '/buyers/:id', controller: 'buyers', action: 'update'

  # DELETE
  delete '/buyers/:id', controller: 'buyers', action: 'destroy'
  #------------------------------

  # Routes for the Idea resource:
  # CREATE
  get '/ideas/new', controller: 'ideas', action: 'new', as: 'new_idea'
  post '/ideas', controller: 'ideas', action: 'create', as: 'ideas'

  # READ
  get '/ideas', controller: 'ideas', action: 'index'
  get '/ideas/:id', controller: 'ideas', action: 'show', as: 'idea'

  # UPDATE
  get '/ideas/:id/edit', controller: 'ideas', action: 'edit', as: 'edit_idea'
  patch '/ideas/:id', controller: 'ideas', action: 'update'

  # DELETE
  delete '/ideas/:id', controller: 'ideas', action: 'destroy'
  #------------------------------

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
