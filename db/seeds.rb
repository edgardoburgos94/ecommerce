# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.all.delete_all
Supplier.all.delete_all
Category.all.delete_all
Product.all.delete_all
Order.all.delete_all
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
p1 = Supplier.create(email: "prove1@gmail.com", password:"123456", password_confirmation:"123456", full_name: "Alfa", description: "Somos una empresa bla bla bla bla...", dir: dir, cel:cel, country: "Colombia", city: city)

dir = Faker::Address.street_address + Faker::Address.secondary_address
cel = Faker::PhoneNumber.cell_phone
country = Faker::Address.country
city = Faker::Address.state
email = Faker::Internet.email
name = Faker::Name.name
p2 = Supplier.create(email: "prove2@gmail.com", password:"123456", password_confirmation:"123456", full_name: "Tennis", dir: dir, cel:cel, country: "Peru", city: city)

dir = Faker::Address.street_address + Faker::Address.secondary_address
cel = Faker::PhoneNumber.cell_phone
country = Faker::Address.country
city = Faker::Address.state
email = Faker::Internet.email
name = Faker::Name.name
p3 = Supplier.create(email: "prove3@gmail.com", password:"123456", password_confirmation:"123456", full_name: "Arturo Calle", dir: dir, cel:cel, country: "Colombia", city: city)

dir = Faker::Address.street_address + Faker::Address.secondary_address
cel = Faker::PhoneNumber.cell_phone
country = Faker::Address.country
city = Faker::Address.state
email = Faker::Internet.email
name = Faker::Name.name
p4 = Supplier.create(email: "prove4@gmail.com", password:"123456", password_confirmation:"123456", full_name: "Gef", dir: dir, cel:cel, country: "Colombia", city: city)

c1 = Category.create(title:"Ropa hombre", img_url: "https://seeklogo.com/images/P/puma-logo-B8E03BAABF-seeklogo.com.png")
c2 = Category.create(title:"Ropa mujer", img_url: "https://seeklogo.com/images/P/puma-logo-B8E03BAABF-seeklogo.com.png")
c3 = Category.create(title:"Joyas y relojes", img_url: "https://seeklogo.com/images/P/puma-logo-B8E03BAABF-seeklogo.com.png")
c4 = Category.create(title:"Hogar", img_url: "https://seeklogo.com/images/P/puma-logo-B8E03BAABF-seeklogo.com.png")
c5 = Category.create(title:"Salud y belleza", img_url: "https://seeklogo.com/images/P/puma-logo-B8E03BAABF-seeklogo.com.png")

sc1 = SubCategory.create(title:"Camisas manga corta", img_url: "https://drive.google.com/uc?export=view&id=1-_cH8noaVPRyvbGRhsTSVWxomHShmC7H", category_id: c1.id )
sc2 = SubCategory.create(title:"Camisas manga larga", img_url: "https://drive.google.com/uc?export=view&id=1eL8-ynqPq2a-25k9J6woyw9L_E3hxzEJ", category_id: c1.id )
sc3 = SubCategory.create(title:"Camisetas polo", img_url: "https://drive.google.com/uc?export=view&id=18ce13maYh2ZLohwT29dlJXQgpYTL8z4h", category_id: c1.id )
sc4 = SubCategory.create(title:"Jeans", img_url: "https://drive.google.com/uc?export=view&id=1l7hbbzwG5iJIEkoWhDR5PhsFdoeT-Fpa", category_id: c1.id )
sc5 = SubCategory.create(title:"Saco", img_url: "https://drive.google.com/uc?export=view&id=16Jp56DeQclRtS9enMCrZpovbMMrYD-CR", category_id: c1.id )
sc6 = SubCategory.create(title:"Zapatos", img_url: "https://i.pinimg.com/originals/3b/25/0d/3b250da9c9741a2adf472cff454ecd26.jpg", category_id: c1.id )

7.times do |i|
  sc1.products.create(title: "Camisa manga corta #{i.to_s}", description: "Una Camisa perfecta para ti", price: 55000, img_url: "https://www.jcrew.com/s7-img-facade/H2883_WX0946?fmt=jpeg&qlt=90,0&resMode=sharp&op_usm=.1,0,0,0&wid=636&hei=636", xs: 1, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0, supplier_id: p1.id)

end

10.times do |i|
  sc2.products.create(title: "Camisa manga larga #{i.to_s}", description: "Una Camisa perfecta para ti", price: 80000, img_url: "https://www.decathlon.es/media/839/8397006/big_923a82a3-9401-4ac1-9d88-195d94903f04.jpg" , xs: 0, s: i*2, m: i, l: i+1, xl: i+3, xxl: 0, supplier_id: p1.id)

end

3.times do |i|
  sc3.products.create(title: "Camiseta polo #{i.to_s}", description: "Una Camisa perfecta para ti", price: 38000, img_url: "https://cdn.lookastic.com/camisa-polo-gris-oscuro/sunspel-original-1246356.jpg" , xs: 1, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0, supplier_id: p3.id)

end

13.times do |i|
  sc4.products.create(title: "Jean #{i.to_s}", description: "El jean perfecto para ti", price: 95000, img_url: "https://i2.linio.com/p/12c984ba0f3c353ded9ee207479931c4-product.jpg", xs: 1, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0, supplier_id: p1.id)

end

2.times do |i|
  sc5.products.create(title: "Saco #{i.to_s}", description: "El buso perfecto para ti", price: 65000, img_url: "https://tiendavirtualfairplay.com/3825/buzo-under-armour-hombre-triblend-fz.jpg", xs: 0, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0, supplier_id: p1.id)

end
