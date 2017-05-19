# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.find_by(email: "123@test.com").nil?
   u = User.new
   u.email = "123@test.com"           # 可以改成自己的 email
   u.password = "123456"                # 最少要六码
   u.password_confirmation = "123456"   # 最少要六码
   u.is_admin = true
   u.save
   puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
 else
   puts "Admin 已经建立过了，脚本跳过该步骤。"
 end

Category.create(name: "普通心理学")
Category.create(name: "社会心理学")
Category.create(name: "发展心理学")
Category.create(name: "积极心理学")

Product.create!(title: "普通心理学",
description: "wu",
quantity: 1000,
price: 199,
size: 1,
category_id: "普通心理学",
image: open("https://cdn.pixabay.com/photo/2016/11/17/11/55/mental-1831391__340.png")
)

Product.create!(title: "社会心理学",
description: "wu",
quantity: 1000,
price: 199,
size: 1,
category_id: "社会心理学",
image: open("https://cdn.pixabay.com/photo/2017/04/05/08/28/consulting-2204253__340.png")
)

Product.create!(title: "发展心理学",
description: "wu",
quantity: 1000,
price: 199,
size: 1,
category_id: "发展心理学",
image: open("https://cdn.pixabay.com/photo/2016/08/27/09/16/head-1623792__340.jpg")
)

Product.create!(title: "积极心理学",
description: "wu",
quantity: 1000,
price: 199,
size: 1,
category_id: "积极心理学",
image: open("https://cdn.pixabay.com/photo/2017/03/10/10/41/virtual-reality-2132409__340.jpg")
)
