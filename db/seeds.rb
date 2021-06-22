# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  product = Product.new(name: "Titleist AP2's", price: 1000, image_url: "https://cdn.golfmagic.com/styles/scale_768/s3/47169.jpg", description: "Top of the line golf irons.")
  product.save

  product = Product.new(name: "Scotty Cameron", price: 300, image_url: "https://www.scottycameron.com/media/12383/18select_familylanding_newport.jpg", description: "Putt like the pros!")
  product.save
  
  product = Product.new(name: "Taylormade M4", price: 500, image_url: "https://image.globalgolf.com/dynamic/1042862/aci/sole-view/taylormade-m4-2018-driver.jpg?s=350", description: "Hit the ball further and straighter.")
  product.save

  product = Product.new(name: " 1 dozen Titleist Pro V1's", price: 50, image_url: "https://images-na.ssl-images-amazon.com/images/I/61bVvDbtiML._AC_SX425_.jpg", description: "Best golf ball in the game.")
  product.save