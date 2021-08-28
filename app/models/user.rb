class User < ApplicationRecord
    has_many :receipts
    has_one :shopping_cart
end
