# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Stock.destroy_all
Investor.destroy_all
Portfolio.destroy_all 

apple = Stock.create(name: "Apple", price: 316, description: "Tech company")
zoom = Stock.create(name: "Zoom", price: 170, description: "Video conference app")

jesse = Investor.create(name: "Jesse", company: "3M")
injae = Investor.create(name: "Injae", company: "MACQUARIE")
mert = Investor.create(name: "Mert", company: "NWM")

jesse1 = Portfolio.create(stock: apple, investor: jesse)
injae1 = Portfolio.create(stock: zoom, investor: injae)
mert1 = Portfolio.create(stock: apple, investor: mert)

