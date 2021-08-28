class Product < ApplicationRecord
    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    belongs_to :seller
    has_many :shopping_cart_products
    has_many :shopping_cart, through: :shopping_cart_products
    has_many :receipt_products
    has_many :receipts, through: :receipts

    def slug_candidates
        ["#{self.seller.slug}-#{self.name}"]
    end
end
