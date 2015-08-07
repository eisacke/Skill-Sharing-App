u1 = User.create(first_name: "Chloe", last_name: "Isacke", bio: "I'm a recent NYU graduate, currently studying at App Academy in New York to become a web developer. I live with my boyfriend in Brooklyn, and I'm obsessed with kickboxing and yoga. I love meeting new people, and am excited to share my love of food with the skillstack community.", password_digest: User.digest("chloe").to_s, email: "chloe@skillshare.com")
u2 = User.create(first_name: "Oliver", last_name: "Roe", bio: "I graduated university with a first class degree in Graphic Design, and have since been working for small design studio in London. I specialise in Photoshop and Indesign, and I'm excited to share my skills. I'm currently based in Wimbledon, but often run classes in central London", password_digest: User.digest("oly").to_s, email: "oly@skillshare.com")

u3 = User.create(first_name: "Jessica", last_name: "Morgan", bio: "After graduating from the BRIT School when I was 16, I supported Marina & The Diamonds on her first UK tour. I have released 2 EPs and toured in Los Angeles and New York. I have been a singer/songwriter for 10 years, and I can't wait to pass on my love of music to other skillstack members.", password_digest: User.digest("jessica").to_s, email: "jessica@skillshare.com")

u4 = User.create(first_name: "Alex", last_name: "Chin", bio: "Digital entrepreneur living in Shoreditch. Ruby and Javascript instructor at General Assembly London.", password_digest: User.digest("alex").to_s, email: "alex@skillshare.com")

c1 = Category.create(name: "Culinery")
c2 = Category.create(name: "Technology")
c3 = Category.create(name: "Design")
c4 = Category.create(name: "Music")
c5 = Category.create(name: "Other")

l1 = Lesson.create!(title: "Fresh Fruit Lollies", description: "It's definitely summer here in New York, and what better way to cool down than fresh fruit ice lollies. Join me in my Brooklyn studio and I'll show you how to make blueberry and raspberry lollies, which you can take home to enjoy. All ingredients are provided, and you will also get to meet my cat Jane!", location: "Brooklyn, New York", category_id: 1, cost: 20, teacher_id: 1)

l2 = Lesson.create!(title: "Sweet Thai Chicken", description: "The inspiration for this recipe comes from my recent trip to Thailand. The perfect weeknight dish, that doubles as a dinner party favourite! A combination of chilli, lime and garlic make this an irresistible dish. All ingredients are provided, and you will also get to meet my cat Jane!", location: "Brooklyn, New York", category_id: 1, cost: 30, teacher_id: 1)

l3 = Lesson.create!(title: "Intro to Handlettering", description: "Style a phrase you love, and share it wit your friends! In this lesson I will teach you the basics of handlettering, to use on a poster, magazine, t-shirt, or anything else you can imagine! I will provide all necessary materials, as well as tea and coffee.", location: "Wimbledon, London", category_id: 3, cost: 50, teacher_id: 2)

l4 = Lesson.create!(title: "Intro to Photoshop", description: "Have you ever wished you could re-touch photographs with ease, or put together simple logo designs? In this lesson I will introduce you to the basics of Photoshoph and we will work together on a project of your choosing. I have all materials necessary, just bring yourself!", location: "Soho, London", category_id: 3, cost: 60, teacher_id: 2)

l5 = Lesson.create!(title: "Basics of Ruby", description: "In this lesson, we will look at the basics of the Ruby programming language, and work towards building a basic game. You don't need to have any experience of Ruby before, and I will provide all necessary software. This is a great way to get going if you are looking to work with Ruby in the future!", location: "Brick Lane, London", category_id: 2, cost: 90, teacher_id: 4)

l6 = Lesson.create!(title: "CSS Frameworks", description: "There are a couple of greate CSS Frameworks out there, and this lesson will cover the pros and cons of the top three used by the industry. We will look at implementing a framework into a new project, and cover the differences between SASS and SCSS. I will provide all necessary software for this lesson.", location: "Brick Lane, London", category_id: 2, cost: 75, teacher_id: 4)

