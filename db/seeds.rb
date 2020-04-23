p "Seeding..."

a = Camera.create(
  title:'Nikon Z6',
  category: 'Stills',
  description: 'A brilliant full-frame all-rounder mirrorless',
  price_per_day: rand(80..150),
  rating: rand(1..5),
  address: 'Alexander Yannai 4, Tel Aviv',
  extras: 'Carry bag',
  user: User.last
)

a = Camera.create(
  title:'Fujifilm X-T30',
  category: 'Stills',
  description: 'This ravishing retro option squeezes in plenty of high-end tech',
  price_per_day: rand(80..150),
  rating: rand(1..5),
  address: '59 Ben Yehuda, Tel Aviv',
  extras: 'Carry bag',
  user: User.last
)

a = Camera.create(
  title:'Sony A7 III',
  category: 'Stills',
  description: 'Quality results partnered with speedy operation',
  price_per_day: rand(80..150),
  rating: rand(1..5),
  address: '59 Ben Yehuda, Tel Aviv',
  extras: 'Carry bag',
  user: User.last
)

a = Camera.create(
  title:'Nikon D850',
  category: 'Stills',
  description: 'Resolution, speed and traditional controls - this DSLR still delivers',
  price_per_day: rand(80..150),
  rating: rand(1..5),
  address: '59 Ben Yehuda, Tel Aviv',
  extras: 'Carry bag',
  user: User.last
)



p "Seed ended."