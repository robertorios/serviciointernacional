Rails.application.routes.draw do
  mount Mercury::Engine => '/'
  Mercury::Engine.routes
    namespace :mercury do
      resources :images
    end
  # mount Mercury::Engine => '/'
  # Mercury::Engine.routes
  
  resources :eventos do
    # get 'eventos' => 'eventos#index', :as => :eventos
    member { post :mercury_update }
    
  end
  resources :contactus


  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  get 'eventos' => 'eventos#show', :as => :show_eventos
  # get 'eventos' => 'eventos#index', :as => :eventos
  # get 'contacts' => 'contacts#index', :as => :contacts
  # get 'contactus' => 'contactus#new', :as => :contactus
  get 'services' => 'services#services', :as => :services
  get 'staff' => 'staff#staff', :as => :staff
  get 'home' => 'home#index', :as => :home
  get 'translations' => 'translations#translations', :as => :translations

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
