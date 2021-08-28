Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # healthcheck
  get '/marketplace/healthcheck', to: 'application#healthcheck'

  # shops
  get '/marketplace/shops-by-category', to: 'seller#get_shops_by_category'
  get '/marketplace/shop', to: 'seller#get_shop'

  # products
  get '/marketplace/products/search', to: 'product#search'
  get '/marketplace/products', to: 'product#get_products'
  get '/marketplace/product', to: 'product#get_product'

  # shopping cart
  put '/marketplace/cart', to: 'cart#add'
  delete '/marketplace/cart', to: 'cart#delete'
end
