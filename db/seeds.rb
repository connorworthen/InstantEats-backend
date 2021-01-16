restaurant = Restaurant.create!(
  name: 'test 1', 
  category: 'fast food', 
  address: 'test addy', 
  phone_number: '7603324343', 
  hours: '10-11', price: '$', 
  eta: '32 min', 
  distance: 4.2,
  menus_attributes: [
    {
      name: 'food item 1', 
      description: 'yum', 
      price: 9.99
    },
    {
      name: 'food item 2', 
      description: 'yum', 
      price: 9.99
    }
  ]
) 
  