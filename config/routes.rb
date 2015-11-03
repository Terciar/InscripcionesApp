Rails.application.routes.draw do
  resources :registrations
  devise_for :users, :path_prefix => 'my'
#TO-Do: personalizar los nombres de las rutas.
#devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

#Para administrar los usuarios
scope "/admin" do
  resources :users
  resources :groups
end


unauthenticated do
#paginas estaticas
  get 'pages/index'
  get 'pages/about'
  get 'pages/contact'
end

authenticated do
  get 'pages/index' => 'pages#index'
  get 'admin/groups' => 'groups#index'
  get 'registrations/:id/change_group' => 'registrations#change_group', as: :change_group_registration
  get 'admin/groups/:id/lista_colonos' => 'groups#lista_colonos', as: :lista_colonos_groups
  
  post 'registrations/:id/confirm_registration' => 'registrations#confirm_registration',as: :confirm_registration
end

root to: "pages#index"
  
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
