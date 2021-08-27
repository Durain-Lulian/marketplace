# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create()
seller = Seller.create()
product = Product.create(seller: seller)

receipt = Receipt.create(user: user)
receipt_product = ReceiptProduct.create(product: product, receipt: receipt)

shopping_cart = ShoppingCart.create(user: user)
shopping_cart_product = ShoppingCartProduct.create(product: product, shopping_cart: shopping_cart)