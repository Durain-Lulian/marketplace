Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # healthcheck
  get '/marketplace/healthcheck', to: 'application#healthcheck'

  # shops
  get '/shops-by-category', to: 'seller#get_shops_by_category'
  get '/shop', to: 'seller#get_shop'

  # products
  get '/products/search', to: 'product#search'
  get '/products', to: 'product#get_products'
  get '/product', to: 'product#get_product'
end
