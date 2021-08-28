Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # healthcheck
  get '/marketplace/healthcheck', to: 'application#healthcheck'

  # shops
  post '/marketplace/shops-by-category', to: 'seller#post_shops_by_category'
  post '/marketplace/shop', to: 'seller#post_shop'

  # products
  post '/marketplace/products/search', to: 'product#search'
  post '/marketplace/products', to: 'product#post_products'
  post '/marketplace/product', to: 'product#post_product'

  # shopping cart
  post '/marketplace/cart/add', to: 'cart#add'
  post '/marketplace/cart/delete', to: 'cart#delete'
  post '/marketplace/cart/update', to: 'cart#update'

end
