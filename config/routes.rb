Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/shops_by_category', to: 'shop#get_shops_by_category'

end
