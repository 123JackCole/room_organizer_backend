# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User data
user1 = User.create(name: "Anthony")
# Room Data
living = Room.create(name: "Living Room", user_id: user1.id)
bedroom = Room.create(name: "Bedroom", user_id: user1.id)
# Storage Data
ct = Storage.create(name: "Coffee Table", room_id: living.id, size: "medium", photo: nil)
bs = Storage.create(name: "Bookshelf", room_id: living.id, size: "medium", photo: nil)
cod = Storage.create(name: "Chest of Drawers", room_id: bedroom.id, size: "large", photo: nil)
ns = Storage.create(name: "Nightstand", room_id: bedroom.id, size: "large", photo: "https://images.sftcdn.net/images/t_app-cover-l,f_auto/p/befbcde0-9b36-11e6-95b9-00163ed833e7/260663710/the-test-fun-for-friends-screenshot.jpg")
# Item Data
Item.create(name: "Address Book", category: "Office Supplies", storage_id: ct.id, room_id: living.id, quantity: "Red and black notebook that keeps all addresses.", description: nil, photo: nil)
Item.create(name: "Cell Phone Charger", category: "Electronics", storage_id: ct.id, room_id: living.id, quantity: nil, description: "Old cellphone charger for Nokia 500.", photo: nil)
Item.create(name: "Extra House Key", category: "Keys", storage_id: ct.id, room_id: living.id, quantity: nil, description: "Second set of house keys for front and back door.", photo: "https://images.sftcdn.net/images/t_app-cover-l,f_auto/p/befbcde0-9b36-11e6-95b9-00163ed833e7/260663710/the-test-fun-for-friends-screenshot.jpg")
Item.create(name: "Diary", category: "Other", storage_id: cod.id, room_id: bedroom.id, quantity: nil, description: "Personal Diaray.", photo: nil)
Item.create(name: "iPad", category: "Electronics", storage_id: ns.id, room_id: bedroom.id, quantity: nil, description: "2019 iPad Pro serial number:2N3UOFN083", photo: "https://images.sftcdn.net/images/t_app-cover-l,f_auto/p/befbcde0-9b36-11e6-95b9-00163ed833e7/260663710/the-test-fun-for-friends-screenshot.jpg")
Item.create(name: "Headphones", category: "Electronics", storage_id: nd.id, room_id: bedroom.id, quantity: nil, description: "Beats by Dre", photo: nil)
Item.create(name: "Favorit Pen", category: "Office Suppies", storage_id: nd.id, room_id: bedroom.id, quantity: nil, description: "Deluxe uni-ball fine point", photo: nil)
