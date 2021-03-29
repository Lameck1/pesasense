# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_one = User.create(name: "lameck", icon: Faker::Avatar.image)
user_two = User.create(name: "nancy", icon: Faker::Avatar.image)
user_three = User.create(name: "rosaliah", icon: Faker::Avatar.image)
user_four = User.create(name: "kennedy", icon: Faker::Avatar.image)
user_five = User.create(name: "frank", icon: Faker::Avatar.image)
user_six = User.create(name: "emma", icon: Faker::Avatar.image)

group_one = user_one.groups.build(name: "Gifts/Donations")
group_one.icon.attach(io: File.open('app/assets/images/seed_images/gift.png'), filename: 'gift.png')
group_one.save

group_two = user_one.groups.build(name: "Housing")
group_two.icon.attach(io: File.open('app/assets/images/seed_images/housing.png'), filename: 'housing.png')
group_two.save

group_three = user_one.groups.build(name: "Education")
group_three.icon.attach(io: File.open('app/assets/images/seed_images/education.png'), filename: 'education.png')
group_three.save

group_four = user_one.groups.build(name: "Retirement")
group_four.icon.attach(io: File.open('app/assets/images/seed_images/retirement.png'), filename: 'retirement.png')
group_four.save

group_five = user_two.groups.build(name: "Transportation")
group_five.icon.attach(io: File.open('app/assets/images/seed_images/transport.png'), filename: 'transport.png')
group_five.save

group_six = user_two.groups.build(name: "Clothing")
group_six.icon.attach(io: File.open('app/assets/images/seed_images/clothing.png'), filename: 'clothing.png')
group_six.save

group_seven = user_two.groups.build(name: "Household Items")
group_seven.icon.attach(io: File.open('app/assets/images/seed_images/Household-items.png'), filename: 'Household-items.png')
group_seven.save

group_eight = user_three.groups.build(name: "Food")
group_eight.icon.attach(io: File.open('app/assets/images/seed_images/food.png'), filename: 'food.png')
group_eight.save

group_nine = user_three.groups.build(name: "Entertainment")
group_nine.icon.attach(io: File.open('app/assets/images/seed_images/entertainment.png'), filename: 'entertainment.png')
group_nine.save

group_ten = user_four.groups.build(name: "Medical/Healthcare")
group_ten.icon.attach(io: File.open('app/assets/images/seed_images/medical.png'), filename: 'medical.png')
group_ten.save

group_eleven = user_four.groups.build(name: "Insurance")
group_eleven.icon.attach(io: File.open('app/assets/images/seed_images/insurance.png'), filename: 'insurance.png')
group_eleven.save

group_twelve = user_five.groups.build(name: "Savings")
group_twelve.icon.attach(io: File.open('app/assets/images/seed_images/savings.png'), filename: 'savings.png')
group_twelve.save

group_thirteen = user_five.groups.build(name: "Utilities")
group_thirteen.icon.attach(io: File.open('app/assets/images/seed_images/utilities.png'), filename: 'utilities.png')
group_thirteen.save

group_fourteen = user_six.groups.build(name: "Personal")
group_fourteen.icon.attach(io: File.open('app/assets/images/seed_images/personal.png'), filename: 'personal.png')
group_fourteen.save

group_fifteen = user_six.groups.build(name: "Debt")
group_fifteen.icon.attach(io: File.open('app/assets/images/seed_images/debt.png'), filename: 'debt.png')
group_fifteen.save

user_one.budgets.create(group_id: group_one.id, amount: 5000)
user_one.budgets.create(group_id: group_two.id, amount: 1800000)
user_one.budgets.create(group_id: group_three.id, amount: 50000)
user_one.budgets.create(group_id: group_four.id, amount: 10000)

user_two.budgets.create(group_id: group_five.id, amount: 5000)
user_two.budgets.create(group_id: group_six.id, amount: 10000)
user_two.budgets.create(group_id: group_seven.id, amount: 6000)

user_three.budgets.create(group_id: group_eight.id, amount: 10000)
user_three.budgets.create(group_id: group_nine.id, amount: 4000)

user_four.budgets.create(group_id: group_ten.id, amount: 10000)
user_four.budgets.create(group_id: group_eleven.id, amount: 1000)

user_five.budgets.create(group_id: group_twelve.id, amount: 20000)
user_five.budgets.create(group_id: group_thirteen.id, amount: 4500)

user_six.budgets.create(group_id: group_fourteen.id, amount: 7500)
user_six.budgets.create(group_id: group_fifteen.id, amount: 8000)

user_one.expenses.create(name: "Birthday Card", amount: 100.00, group_id: group_one.id)
user_one.expenses.create(name: "3 bedroom Apartment", amount: 2000000.00, group_id: group_two.id)
user_one.expenses.create(name: "English Text Book", amount: 500.00, group_id: group_three.id)
user_one.expenses.create(name: "Pension Contribution", amount: 4000.00, group_id: group_four.id)
user_one.expenses.create(name: "Padlock", amount: 150.00)

user_two.expenses.create(name: "Taxi", amount: 1000.00, group_id: group_five.id)
user_two.expenses.create(name: "Shirt", amount: 850.00, group_id: group_six.id)
user_two.expenses.create(name: "Toaster", amount: 2000.00, group_id: group_seven.id)
user_two.expenses.create(name: "Soccer Ball", amount: 1500.00)

user_three.expenses.create(name: "Bread", amount: 100.00, group_id: group_eight.id)
user_three.expenses.create(name: "Swimming", amount: 150.00, group_id: group_nine.id)
user_three.expenses.create(name: "Sandals", amount: 120.00)

user_four.expenses.create(name: "Panadol", amount: 40.00, group_id: group_ten.id)
user_four.expenses.create(name: "Motor Insurance", amount: 10000.00, group_id: group_eleven.id)
user_four.expenses.create(name: "Phone Charger", amount: 350.00)

user_five.expenses.create(name: "Plot Aquisition", amount: 6000.00, group_id: group_twelve.id)
user_five.expenses.create(name: "Electricity Bill", amount: 1000.00, group_id: group_thirteen.id)
user_five.expenses.create(name: "Flute", amount: 400.00)

user_six.expenses.create(name: "Gym Registration", amount: 75.00, group_id: group_fourteen.id)
user_six.expenses.create(name: "Friends Debt", amount: 5000.00, group_id: group_fifteen.id)
user_six.expenses.create(name: "Umbrella", amount: 250.00)
