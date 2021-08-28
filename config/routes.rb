Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # shops
  get '/shops-by-category', to: 'shop#get_shops_by_category'

  # products
  get '/products/search', to: 'product#search'
  get '/products', to: 'product#get_products'

end
