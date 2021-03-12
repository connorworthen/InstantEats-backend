test1 = Restaurant.create(
  name: 'test 3000', 
  category: 'Fast Food', 
  address: '123 Burgers Way', 
  phone_number: '(760)-332-4343', 
  hours: '10:00 A.M - 1:00 A.M', 
  price: '$', 
  eta: '47 min', 
  distance: 4.2,
  items_attributes: [
    {
      name: 'Double-Double Cheeseburger Combo', 
      description: 'Our famous Double-Double with patty, cheese, and spread. Come with fries and a drink.', 
      price: 8.00
    },
    {
      name: 'Double-Double Hamburger Combo', 
      description: 'Our famous Double-Double with patty and spread. Come with fries and a drink.', 
      price: 7.00
    },
    {
      name: 'Double-Double Cheeseburger', 
      description: 'Our famous Double-Double with patty, cheese, and spread.', 
      price: 4.00
    },
    {
      name: 'Double-Double Hamburger', 
      description: 'Our famous Double-Double with patty and spread.', 
      price: 4.00
    },
    {
      name: 'Fries', 
      description: 'Our famous fries cooked only in peanut oil and topped with sea salt.', 
      price: 3.00
    },
    {
      name: 'Drink', 
      description: 'Your choice of all Coke products and our freshly made lemonade .', 
      price: 2.00
    }
  ]
)
test1.image.attach(io: File.open('./public/images/test3.webp'), filename: 'test3.webp', content_type: 'application/webp')
test1.save!
test1.image.attached?
