# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  product1 = Product.create(name: "Titleist_ap2", price: 1000, image_url: "https://cdn.golfmagic.com/styles/scale_768/s3/47169.jpg", description: "Top of the line golf irons.")

  product2 = Product.create(name: "Scotty_cameron", price: 400, image_url: "https://www.scottycameron.com/media/12383/18select_familylanding_newport.jpg", description: "Putt like the pros!")

  product3 = Product.create(name: "Taylormade_m4", price: 5000, image_url: "https://image.globalgolf.com/dynamic/1042862/aci/sole-view/taylormade-m4-2018-driver.jpg?s=350", description: "Hit the ball further and straighter.")
