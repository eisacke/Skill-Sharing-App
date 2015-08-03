u1 = User.create(first_name: "Emily", last_name: "Isacke", bio: "Graphic Designer & Developer", image: "https://scontent-lhr3-1.xx.fbcdn.net/hphotos-atn1/v/t1.0-9/11269821_10152870891517951_1753648145167085150_n.jpg?oh=00b272d6669ea96da202424b2064ac67&oe=564028B0", password_digest: User.digest("emily").to_s, email: "emily@isacke.com")

u2 = User.create(first_name: "Alex", last_name: "Chin", bio: "Full Stack Web Developer", password_digest: User.digest("alex").to_s, email: "alex@alexchin.com")

