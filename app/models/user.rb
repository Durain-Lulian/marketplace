class User < ApplicationRecord
    has_many :transactions
    has_many :shopping_carts
end
