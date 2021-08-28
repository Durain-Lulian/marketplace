# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

ReceiptProduct.delete_all
ShoppingCartProduct.delete_all
ShoppingCart.delete_all
Product.delete_all
Receipt.delete_all
User.delete_all
Seller.delete_all

# user = User.create()
# cart = ShoppingCart.create(user: user)

csv_text = File.read(Rails.root.join('db/seeds', 'shops.csv'))
csv = CSV.parse(csv_text, headers: true, col_sep: ',', encoding: 'UTF-8')
csv.each do |row|
    shop = Seller.new
    shop.name = row['name']
    shop.category = row['category']
    shop.image_url = row['url']
    shop.rating =  rand * 5.0
    shop.save
end
puts "There are now #{Seller.count} rows in the seller table"

csv_text = File.read(Rails.root.join('db/seeds', 'products.csv'))
csv = CSV.parse(csv_text, headers: true, :quote_char => '"', encoding: 'UTF-8')
csv.each do |row|
    product = Product.new
    product.name = row['name']
    product.description = row['description']
    product.price = row['price']
    # product.cashback_percentage = row['cashback_percentage']
    product.image = row['image_url']
    puts row['seller_name']
    shop = Seller.find_by(name: row['seller_name'])
    product.seller = shop
    product.cashback_percentage = row['cashback'].to_i
    product.rating = rand * 5.0
    product.stock = (rand * 200 + 100).to_i
    product.save
    puts product.errors.full_messages
end
puts "There are now #{Product.count} rows in the product table"


# product = Product.create(seller: seller)

# receipt = Receipt.create(user: user)
# receipt_product = ReceiptProduct.create(product: product, receipt: receipt)

# shopping_cart = ShoppingCart.create(user: user)
# shopping_cart_product = ShoppingCartProduct.create(product: product, shopping_cart: shopping_cart)