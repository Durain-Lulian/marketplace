# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'


user = User.create()

csv_text = File.read(Rails.root.join('db/seeds', 'shops.csv'))
    csv = CSV.parse(csv_text, headers: true, encoding: 'UTF-8')
    csv.each do |row|
        shop = Seller.new
        shop.name = row['shop_name']
        shop.cashback_percentage = row['cashback'].to_i
        shop.category = row['category']
        shop.image_url = row['url']
        shop.save
    end
    puts "There are now #{Seller.count} rows in the seller table"

# product = Product.create(seller: seller)

# receipt = Receipt.create(user: user)
# receipt_product = ReceiptProduct.create(product: product, receipt: receipt)

# shopping_cart = ShoppingCart.create(user: user)
# shopping_cart_product = ShoppingCartProduct.create(product: product, shopping_cart: shopping_cart)