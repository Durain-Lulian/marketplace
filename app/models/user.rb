class User < ApplicationRecord
    has_many :receipts
    has_many :shopping_carts
end
