u1 = User.create(first_name: "Chloe", last_name: "Isacke", bio: "I'm a recent NYU graduate, currently studying at App Academy in New York to become a web developer. I live with my boyfriend in Brooklyn, and I'm obsessed with kickboxing and yoga. I love meeting new people, and am excited to share my love of food with the skillstack community.", password_digest: User.digest("chloe").to_s, email: "chloe@skillshare.com")
u2 = User.create(first_name: "Oliver", last_name: "Roe", bio: "I graduated university with a first class degree in Graphic Design, and have since been working for small design studio in London. I specialise in Photoshop and Indesign, and I'm excited to share my skills. I'm currently based in Wimbledon, but often run classes in central London", password_digest: User.digest("oly").to_s, email: "oly@skillshare.com")

u3 = User.create(first_name: "Jessica", last_name: "Morgan", bio: "After graduating from the BRIT School when I was 16, I supported Marina & The Diamonds on her first UK tour. I have released 2 EPs and toured in Los Angeles and New York. I have been a singer/songwriter for 10 years, and I can't wait to pass on my love of music to other skillstack members.", password_digest: User.digest("jessica").to_s, email: "jessica@skillshare.com")

u4 = User.create(first_name: "Alex", last_name: "Chin", bio: "Digital entrepreneur living in Shoreditch. Ruby and Javascript instructor at General Assembly London.", password_digest: User.digest("alex").to_s, email: "alex@skillshare.com")

c1 = Category.create(name: "Culinery")
c2 = Category.create(name: "Technology")
c3 = Category.create(name: "Design")
c4 = Category.create(name: "DIY")
c5 = Category.create(name: "Music")
c6 = Category.create(name: "Other")

l1 = Lesson.create!(title: "Fresh Fruit Lollies", description: "It's definitely summer here in New York, and what better way to cool down than fresh fruit ice lollies. Join me in my Brooklyn studio and I'll show you how to make blueberry and raspberry lollies, which you can take home to enjoy. All ingredients are provided, and you will also get to meet my cat Jane!", location: "Brooklyn, New York", category_id: 1, cost: 20, teacher_id: 1)

l2 = Lesson.create!(title: "Sweet Thai Chicken", description: "The inspiration for this recipe comes from my recent trip to Thailand. The perfect weeknight dish, that doubles as a dinner party favourite! A combination of chilli, lime and garlic make this an irresistible dish. All ingredients are provided, and you will also get to meet my cat Jane!", location: "Brooklyn, New York", category_id: 1, cost: 30, teacher_id: 1)