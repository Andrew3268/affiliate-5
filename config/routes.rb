Rails.application.routes.draw do

  # root 'ecommerces#index'
  root 'ecommerces#gadgets'

  resources :shoes
  # root 'shoes#index'

  resources :codes
  # root 'codes#index'


  devise_for :users
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  get ':controller(/:action(/:id))'
  post ':controller(/:action(/:id))'
 
  get 'hotdeals/hotdeal' 
  get '/ecommerces/search', to: 'ecommerces#search', as: 'search_ecommerce'
  
  post '/wishlist/:ecommerce_id', to: 'wishlists#add', as: 'add_wishlist'
  get '/wishlist/show', to: 'wishlists#show'
  delete '/wishlist/:ecommerce_id/destroy', to: 'wishlists#destroy', as: 'destroy_wishlist'
  
  post '/ecommerces/category_price', to: 'ecommerces#category_price', as: 'category_price'
  post '/ecommerces/pcategory_product', to: 'ecommerces#pcategory_product', as: 'pcategory_product'
  post '/ecommerces/gadgets', to: 'ecommerces#gadgets', as: 'gadgets'
  post '/ecommerces/upload', to: 'ecommerecs#upload', as: 'upload'

  post '/message/contact_us', to: 'message#contact_us', as: 'contact_us'
  post '/search/quicksearch', to: 'search#quicksearch', as: 'quicksearch'
  
  post '/hotdeals/promotion', to: 'hotdeals#promotion', as: 'promotion'
  post '/hotdeals/coupons', to: 'hotdeals#coupons', as: 'coupons'
  post '/hotdeals/discount_codes', to: 'hotdeals#discount_codes', as: 'discount_codes'
  post '/hotdeals/hotdeals_men', to: 'hotdeals#hotdeals_men', as: 'hotdeals_men'
  post '/hotdeals/hotdeals_women', to: 'hotdeals#hotdeals_women', as: 'hotdeals_women'

  post '/blogs/blogs_home', to: 'blogs#blogs_home', as: 'blogs_home'
  
  # get '/ecommerces/:ecommerce_id/destroy' => 'ecommerecs#destroy'
  # get 'ecommerces/:ecommerce_id/edit' => 'ecommerces#edit'
  # post 'ecommerces/:ecommerce_id/update' => 'ecommerce#update'

  
  
  

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
