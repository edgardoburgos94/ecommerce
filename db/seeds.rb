# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Category.create(title:"Camisas manga corta", img_url: "https://drive.google.com/uc?export=view&id=1-_cH8noaVPRyvbGRhsTSVWxomHShmC7H")
c2 = Category.create(title:"Camisas manga larga", img_url: "https://drive.google.com/uc?export=view&id=1eL8-ynqPq2a-25k9J6woyw9L_E3hxzEJ")
c3 = Category.create(title:"Camisetas polo", img_url: "https://drive.google.com/uc?export=view&id=18ce13maYh2ZLohwT29dlJXQgpYTL8z4h")
c4 = Category.create(title:"Jeans", img_url: "https://drive.google.com/uc?export=view&id=1l7hbbzwG5iJIEkoWhDR5PhsFdoeT-Fpa")
c5 = Category.create(title:"Saco", img_url: "https://drive.google.com/uc?export=view&id=16Jp56DeQclRtS9enMCrZpovbMMrYD-CR")

20.times do |i|
  c2.products.create(title: "Camisa manga larga #{i.to_s}", description: "Una Camisa perfecta para ti", price: i*1230, img_url: "https://drive.google.com/uc?export=view&id=12Qo9_TE94Ge4rPRrHpOISBPKpegklete" ).sizes.create(xs: 1, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0)
  
end

20.times do |i|
  c2.products.create(title: "Camisa manga corta #{i.to_s}", description: "Una Camisa perfecta para ti", price: i*1230, img_url: "https://drive.google.com/uc?export=view&id=12Qo9_TE94Ge4rPRrHpOISBPKpegklete" ).sizes.create(xs: 1, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0)

end

20.times do |i|
  c3.products.create(title: "Camiseta polo #{i.to_s}", description: "Una Camisa perfecta para ti", price: i*1230, img_url: "https://drive.google.com/uc?export=view&id=12Qo9_TE94Ge4rPRrHpOISBPKpegklete" ).sizes.create(xs: 1, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0)

end

20.times do |i|
  c4.products.create(title: "Jean #{i.to_s}", description: "El jean perfecta para ti", price: i*1230, img_url: "https://drive.google.com/uc?export=view&id=12Qo9_TE94Ge4rPRrHpOISBPKpegklete" ).sizes.create(xs: 1, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0)

end

20.times do |i|
  c5.products.create(title: "Saco #{i.to_s}", description: "El buso perfecta para ti", price: i*1230, img_url: "https://drive.google.com/uc?export=view&id=12Qo9_TE94Ge4rPRrHpOISBPKpegklete" ).sizes.create(xs: 1, s: i*3, m: i, l: i+1, xl: i+3, xxl: 0)

end
