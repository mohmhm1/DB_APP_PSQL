Rails.application.routes.draw do
  get 'uploads/new'

  get 'uploads/create'

  get 'uploads/index'

  get 'uploads/edit'

  resources :post_attachments
  resources :uploads
  get 'uploads/index'

  get 'uploads/new'

  get 'uploads/create'

  get 'uploads/edit'

  get 'uploads/destroy'
 resources :uploads, only: [:index, :new, :create, :destroy, :edit]
  devise_for :users, :controllers => { :registrations => "registrations" }
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/new'

  get 'docs/index'

  get 'docs/new'

  get 'docs/create'

  get 'docs/destroy'

  get 'inventories/index'
  get 'export', to: 'inventories#export', as: :inventories_export
  get 'inventories/import'
  get 'services/import'
  get 'export', to: 'services#export', as: :services_export
resources :docs, only: [:index, :new, :create, :destroy]
get '/inventories/history', to: 'inventories#history', as: :inventories_history
  resources :inventories do 
    collection {post :import}
  end
  root "main#index"

  resources :sites
  resources :velas
  resources :welcome
  resources :services do
    collection {post :import}
  end
  resources :people
 
resources :posts
  #get 'posts' => 'posts#show'

  #get 'posts/new' => 'posts#new'

  #post 'posts' => 'posts#create'

  get 'about/index'

get 'about' => 'about#index'


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
  #     #     resources :sales do
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
