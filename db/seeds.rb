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
p1 = Supplier.create(email: "prove1@gmail.com", password:"123456", password_confirmation:"123456", full_name: "Alfa", description: "Somos una empresa familiar de venta de ropa y artículos para bebe, que nació al ver la necesidad de muchas mamás de comprar artículos para su bebe de excelente calidad y con buenos precios, la idea surgió a principios de 2011 donde empezamos a importar para nuestros conocidos y a ofertar por medio del facebook lo que íbamos trayendo, y gracias a nuestros buenos precios y nuestra excelente atención, el negocio empezó a crecer hasta llegar a ser  lo que somos hoy, una tienda virtual con mas de 400 productos para que las mamas puedan vestir a sus bebes con las mejores  marcas a los mejores precios.", dir: dir, cel:cel, country: "Colombia", city: city, cover_img: "https://drive.google.com/uc?export=view&id=1GFIol_2bUDUcfIf1ubzIhU3uysm3Nrdo", profile_img: "https://drive.google.com/uc?export=view&id=1DTJPmDdR9N2Y79iL0ZNrOycv9kJLzET-")

dir = Faker::Address.street_address + Faker::Address.secondary_address
cel = Faker::PhoneNumber.cell_phone
country = Faker::Address.country
city = Faker::Address.state
email = Faker::Internet.email
name = Faker::Name.name
p2 = Supplier.create(email: "prove2@gmail.com", password:"123456", password_confirmation:"123456", full_name: "Tennis", description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", dir: dir, cel:cel, country: "Peru", city: city)

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

c1 = Category.create(title:"Hombre", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy")
c2 = Category.create(title:"Mujer", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy")
c3 = Category.create(title:"Niños y bebés", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy")
c4 = Category.create(title:"Calzado y bolsos", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy")
c5 = Category.create(title:"Tecnología y accesorios", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy")
c6 = Category.create(title:"Bisutería", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy")
c7 = Category.create(title:"Casa y jardín", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy")
c8 = Category.create(title:"Cocina comedor y bar", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy")
c9 = Category.create(title:"Deportes y ocio", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy")
c10 = Category.create(title:"Salud y belleza", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy")
c11 = Category.create(title:"Ferretería y herramientas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy")
c12 = Category.create(title:"Maquinaria y accesorios", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy")

# Categoría hombres
sc1 = SubCategory.create(title:"Camisas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc2 = SubCategory.create(title:"Camisetas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc3 = SubCategory.create(title:"Chaquetas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc4 = SubCategory.create(title:"Jeans", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc5 = SubCategory.create(title:"Pantalones", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Pijamas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Sudaderas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Blazers", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Sueteres", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Trajes", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Calcetines", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Ropa interior", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Pantalonetas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Correas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Gafas de sol", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Gorras", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Pañuelos", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Corbatas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Bufandas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Guantes", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Sombreros", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Bolsos", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )
sc6 = SubCategory.create(title:"Otros", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c1.id )

# Categoría mujer
sc6 = SubCategory.create(title:"Blusas y camisas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Camisetas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Chaquetas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Jeans", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Pantalones", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Leggins", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Faldas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Pijamas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Sudaderas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Blazers", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Sueteres", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Trajes", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Calcetines", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Ropa interior", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Vestidos", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Trajes de baño", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Correas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Gafas de sol", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Gorras", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Bufandas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Guantes", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Sombreros", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Bolsos", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )
sc6 = SubCategory.create(title:"Otros", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c2.id )

# Categoría Niños y bebés
sc6 = SubCategory.create(title:"Ropa niña", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c3.id )
sc6 = SubCategory.create(title:"Ropa niño", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c3.id )
sc6 = SubCategory.create(title:"Ropa bebé niña", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c3.id )
sc6 = SubCategory.create(title:"Ropa bebé niño", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c3.id )
sc6 = SubCategory.create(title:"Vestidos para niña", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c3.id )
sc6 = SubCategory.create(title:"Pijamas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c3.id )
sc6 = SubCategory.create(title:"Bolsos y mochilas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c3.id )
sc6 = SubCategory.create(title:"Otros", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c3.id )

# Categoría Calzado y bolsos
sc6 = SubCategory.create(title:"Zapatos hombre", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c4.id )
sc6 = SubCategory.create(title:"Tenis hombre", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c4.id )
sc6 = SubCategory.create(title:"Billeteras hombre", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c4.id )
sc6 = SubCategory.create(title:"Bolsos", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c4.id )
sc6 = SubCategory.create(title:"Zapatos mujer", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c4.id )
sc6 = SubCategory.create(title:"Tenis mujer", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c4.id )
sc6 = SubCategory.create(title:"Sandalias", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c4.id )
sc6 = SubCategory.create(title:"Tacones", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c4.id )
sc6 = SubCategory.create(title:"Carteras", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c4.id )
sc6 = SubCategory.create(title:"Billeteras mujer", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c4.id )
sc6 = SubCategory.create(title:"Bolsos", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c4.id )
sc6 = SubCategory.create(title:"Otros", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c4.id )

# Categoría Tecnología y accesorios
sc6 = SubCategory.create(title:"Fundas y estuches", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c5.id )
sc6 = SubCategory.create(title:"Protector pantalla", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c5.id )
sc6 = SubCategory.create(title:"Cargadores", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c5.id )
sc6 = SubCategory.create(title:"Soportes", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c5.id )
sc6 = SubCategory.create(title:"Auriculares", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c5.id )
sc6 = SubCategory.create(title:"Altavoces", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c5.id )
sc6 = SubCategory.create(title:"Memorias", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c5.id )
sc6 = SubCategory.create(title:"Tripodes y soportes", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c5.id )
sc6 = SubCategory.create(title:"Cámaras", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c5.id )
sc6 = SubCategory.create(title:"Otros", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c5.id )

# Categoría Bisutería
sc6 = SubCategory.create(title:"Collares", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c6.id )
sc6 = SubCategory.create(title:"Anillos", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c6.id )
sc6 = SubCategory.create(title:"Brazaletes y pulseras", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c6.id )
sc6 = SubCategory.create(title:"Aretes", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c6.id )
sc6 = SubCategory.create(title:"Llaveros", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c6.id )
sc6 = SubCategory.create(title:"Otros", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c6.id )

# Categoría Casa y jardín
sc6 = SubCategory.create(title:"Artesanías", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Cuadros", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Relojes", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Albumes de fotos", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Limpieza del hogar", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Jardinería", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Decoración", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Acolchaos", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Cortinas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Toallas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Almohadas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Fundas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Cojines", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Manteles", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Decoración", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )
sc6 = SubCategory.create(title:"Otros", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c7.id )

# Categoría Cocina comedor y bar
sc6 = SubCategory.create(title:"Vasos y copas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c8.id )
sc6 = SubCategory.create(title:"Para hornear", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c8.id )
sc6 = SubCategory.create(title:"Tacones", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c8.id )
sc6 = SubCategory.create(title:"De cocina", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c8.id )
sc6 = SubCategory.create(title:"De bar", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c8.id )
sc6 = SubCategory.create(title:"Vajillas", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c8.id )
sc6 = SubCategory.create(title:"Decoración", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c8.id )
sc6 = SubCategory.create(title:"Otros", img_url: "https://drive.google.com/uc?export=view&id=1vCueqSzTnGwhwFSx1HTbumISWm8vUbBy", category_id: c8.id )









7.times do |i|
  sc1.products.create(title: "Camisa manga corta #{i.to_s}",
     description: "Una Camisa perfecta para ti, hecha con Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore ",
     price: 55000, img_url: "https://www.jcrew.com/s7-img-facade/H2883_WX0946?fmt=jpeg&qlt=90,0&resMode=sharp&op_usm=.1,0,0,0&wid=636&hei=636",
     xs: 1,
     s: i*3,
     m: i,
     l: i+1,
     xl: i+3,
     xxl: 0,
     supplier_id: p1.id,
     unique: 0,
     p_registered_user: 0,
     p_day: 3,
     p_q1: 1,
     p_q2: 2,
     p_q3: 3,
     p_q4: 4,
     q1: 5,
     q2: 10,
     q3: 15,
     q4: 20)

end

10.times do |i|
  sc2.products.create(title: "Camisa manga larga #{i.to_s}", description: "Una Camisa perfecta para ti",
    price: 80000, img_url: "https://www.decathlon.es/media/839/8397006/big_923a82a3-9401-4ac1-9d88-195d94903f04.jpg" ,

    xs: 0, s: i*2, m: i, l: i+1, xl: i+3, xxl: 0, supplier_id: p1.id)

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
