class ShoppingCartProduct < ApplicationRecord
    belongs_to :product
    belongs_to :shopping_cart
end
