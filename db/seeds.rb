# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  { username: 'foryst', password_digest: '123', stylist_status: false, client_status: true, avatar: 'https://i.pinimg.com/736x/c3/0e/9b/c30e9bbaef3532e9b5b8964024f25a71--princess-cat-princess-aurora.jpg' },
  { username: 'andrew', password_digest: '123', stylist_status: true, client_status: false, avatar: 'https://www.designboom.com/wp-content/uploads/2017/12/these-cat-hair-cat-hats-are-going-viral-not-to-be-mistaken-for-diors-FW17-beret-designboom-03.jpg', specialty: ['color'], enjoy: ['bleach & tone', 'balayage'], location: 'San Francisco'  }
])

Look.create([
  { image: 'https://instagram.fsnc1-1.fna.fbcdn.net/vp/275aebbc58cb1eea1b0db6e97dab6afa/5AFB9657/t51.2885-15/e35/25012929_341032523031800_2482083384432525312_n.jpg', caption: 'pink balayage', likes: 50, tags: ['tailored', 'sf'] },
  { image: 'https://instagram.fsnc1-1.fna.fbcdn.net/vp/1a2882f4ad2d9645c8cba9919b3f2350/5ADAAE9D/t51.2885-15/e35/20687056_159255284638338_8919688750624145408_n.jpg', caption: 'two tone tint', likes: 50, tags: ['beautiful', 'tailoredsf'] }
])

Post.create([
  { content: 'hello world' }
])

Comment.create([
  { content: 'love it' }
])

p "seeded database"
