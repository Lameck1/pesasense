# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Group.destroy_all
Expense.destroy_all

User.create(name: "lameck", icon: Faker::Avatar.image)
User.create(name: "nancy", icon: Faker::Avatar.image)
User.create(name: "rosaliah", icon: Faker::Avatar.image)
User.create(name: "kennedy", icon: Faker::Avatar.image)
User.create(name: "frank", icon: Faker::Avatar.image)
User.create(name: "emma", icon: Faker::Avatar.image)

Group.create(name: "Gifts/Donations", icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100", user_id: 1)
Group.create(name: "Housing", icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100", user_id: 1)
Group.create(name: "Transportation", icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100", user_id: 2)
Group.create(name: "Clothing", icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100", user_id: 2)
Group.create(name: "Food", icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100", user_id: 3)
Group.create(name: "Recreation", icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100", user_id: 3)
Group.create(name: "Health", icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100", user_id: 4)
Group.create(name: "Insurance", icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100", user_id: 4)
Group.create(name: "Savings", icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100", user_id: 5)
Group.create(name: "Utilities", icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100", user_id: 5)
Group.create(name: "Personal", icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100", user_id: 6)
Group.create(name: "Debt", icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100", user_id: 6)

Expense.create(name: "Birthday Card", description: "Birthday card for Rosaliah", amount: 100.00, user_id: 1, group_id: 1)
Expense.create(name: "3 bedroom Apartment", description: "Appartment for the family", amount: 2000000.00, user_id: 1, group_id: 2)
Expense.create(name: "Padlock", description: "Birthday card for Rosaliah", amount: 150.00, user_id: 1)

Expense.create(name: "Taxi", description: "Going to visit Mom", amount: 1000.00, user_id: 2, group_id: 3)
Expense.create(name: "Shirt", description: "Suprise for hubby", amount: 850.00, user_id: 2, group_id: 4)
Expense.create(name: "Broom", description: "Keeping the house clean", amount: 20.00, user_id: 2)

Expense.create(name: "Bread", description: "For tomorrow breakfast", amount: 100.00, user_id: 3, group_id: 5)
Expense.create(name: "Swimming", description: "Taking down the heat", amount: 50.00, user_id: 3, group_id: 6)
Expense.create(name: "Sandals", description: "Need new ones", amount: 120.00, user_id: 3)

Expense.create(name: "Panadol", description: "Had some headache", amount: 40.00, user_id: 4, group_id: 7)
Expense.create(name: "Motor Insurance", description: "Car insurance had expired", amount: 10000.00, user_id: 4, group_id: 8)
Expense.create(name: "Phone Charger", description: "The former broke", amount: 350.00, user_id: 4)

Expense.create(name: "Pension fee", description: "Retirement plan for the future", amount: 4000.00, user_id: 5, group_id: 9)
Expense.create(name: "Electricity Bill", description: "Had to recharge the prepay account", amount: 1000.00, user_id: 5, group_id: 10)
Expense.create(name: "Flute", description: "For passing those boring times", amount: 400.00, user_id: 5)

Expense.create(name: "Toothbrush", description: "The former isn't cleaning anymore", amount: 75.00, user_id: 6, group_id: 11)
Expense.create(name: "Friends Debt", description: "Paid of Debt I owed completly", amount: 5000.00, user_id: 6, group_id: 12)
Expense.create(name: "Umbrella", description: "The rainy season is upon us", amount: 250.00, user_id: 6)
