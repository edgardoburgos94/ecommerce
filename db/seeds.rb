# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.all.delete_all
# Supplier.all.delete_all
# Category.all.delete_all
# Product.all.delete_all
OrderItem.all.delete_all

  dir = Faker::Address.street_address + Faker::Address.secondary_address
  cel = Faker::PhoneNumber.cell_phone
  country = Faker::Address.country
  city = Faker::Address.state
  email = Faker::Internet.email
  name = Faker::Name.name


50.times do |i|
  dir = Faker::Address.street_address + Faker::Address.secondary_address
  cel = Faker::PhoneNumber.cell_phone
  country = Faker::Address.country
  city = Faker::Address.state
  email = Faker::Internet.email
  name = Faker::Name.name
  User.create(email: "test#{i}@gmail.com", password:"123456", password_confirmation:"123456", full_name: name, dir: dir, cel:cel, country: country, city: city)
end

dir = Faker::Address.street_address + Faker::Address.secondary_address
cel = Faker::PhoneNumber.cell_phone
country = Faker::Address.country
city = Faker::Address.state
email = Faker::Internet.email
name = Faker::Name.name
p1 = Supplier.create(email: "prove1@gmail.com", password:"123456", password_confirmation:"123456", full_name: "Alfa", dir: dir, cel:cel, country: "Colombia", city: city,p_ure:6 ,p_dia:5 ,p_cmin:4 ,p_cmay:3 ,cant_may:10)

dir = Faker::Address.street_address + Faker::Address.secondary_address
cel = Faker::PhoneNumber.cell_phone
country = Faker::Address.country
city = Faker::Address.state
email = Faker::Internet.email
name = Faker::Name.name
p2 = Supplier.create(email: "prove2@gmail.com", password:"123456", password_confirmation:"123456", full_name: "Tennis", dir: dir, cel:cel, country: "Peru", city: city,p_ure:6 ,p_dia:5 ,p_cmin:4 ,p_cmay:3 ,cant_may:10)

dir = Faker::Address.street_address + Faker::Address.secondary_address
cel = Faker::PhoneNumber.cell_phone
country = Faker::Address.country
city = Faker::Address.state
email = Faker::Internet.email
name = Faker::Name.name
p3 = Supplier.create(email: "prove3@gmail.com", password:"123456", password_confirmation:"123456", full_name: "Arturo Calle", dir: dir, cel:cel, country: "Colombia", city: city,p_ure:6 ,p_dia:5 ,p_cmin:4 ,p_cmay:3 ,cant_may:10)

dir = Faker::Address.street_address + Faker::Address.secondary_address
cel = Faker::PhoneNumber.cell_phone
country = Faker::Address.country
city = Faker::Address.state
email = Faker::Internet.email
name = Faker::Name.name
p4 = Supplier.create(email: "prove4@gmail.com", password:"123456", password_confirmation:"123456", full_name: "Gef", dir: dir, cel:cel, country: "Colombia", city: city,p_ure:6 ,p_dia:5 ,p_cmin:4 ,p_cmay:3 ,cant_may:10)

c1 = p1.categories.create(title:"Camisas manga corta", img_url: "https://drive.google.com/uc?export=view&id=1-_cH8noaVPRyvbGRhsTSVWxomHShmC7H")
c2 = p1.categories.create(title:"Camisas manga larga", img_url: "https://drive.google.com/uc?export=view&id=1eL8-ynqPq2a-25k9J6woyw9L_E3hxzEJ")
c3 = p2.categories.create(title:"Camisetas polo", img_url: "https://drive.google.com/uc?export=view&id=18ce13maYh2ZLohwT29dlJXQgpYTL8z4h")
c4 = p3.categories.create(title:"Jeans", img_url: "https://drive.google.com/uc?export=view&id=1l7hbbzwG5iJIEkoWhDR5PhsFdoeT-Fpa")
c5 = p4.categories.create(title:"Saco", img_url: "https://drive.google.com/uc?export=view&id=16Jp56DeQclRtS9enMCrZpovbMMrYD-CR")
c6 = p4.categories.create(title:"Zapatos", img_url: "https://i.pinimg.com/originals/3b/25/0d/3b250da9c9741a2adf472cff454ecd26.jpg")

20.times do |i|
  c1.products.create(title: "Camisa manga corta #{i.to_s}", description: "Una Camisa perfecta para ti", price: 55000, img_url: "https://www.jcrew.com/s7-img-facade/H2883_WX0946?fmt=jpeg&qlt=90,0&resMode=sharp&op_usm=.1,0,0,0&wid=636&hei=636", xs: 1, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0)

end

20.times do |i|
  c2.products.create(title: "Camisa manga larga #{i.to_s}", description: "Una Camisa perfecta para ti", price: 80000, img_url: "https://www.decathlon.es/media/839/8397006/big_923a82a3-9401-4ac1-9d88-195d94903f04.jpg" , xs: 0, s: i*2, m: i, l: i+1, xl: i+3, xxl: 0)

end

20.times do |i|
  c3.products.create(title: "Camiseta polo #{i.to_s}", description: "Una Camisa perfecta para ti", price: 38000, img_url: "https://cdn.lookastic.com/camisa-polo-gris-oscuro/sunspel-original-1246356.jpg" , xs: 1, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0)

end

20.times do |i|
  c4.products.create(title: "Jean #{i.to_s}", description: "El jean perfecto para ti", price: 95000, img_url: "https://i2.linio.com/p/12c984ba0f3c353ded9ee207479931c4-product.jpg", xs: 1, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0)

end

20.times do |i|
  c5.products.create(title: "Saco #{i.to_s}", description: "El buso perfecto para ti", price: 65000, img_url: "https://tiendavirtualfairplay.com/3825/buzo-under-armour-hombre-triblend-fz.jpg", xs: 0, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0)

end
