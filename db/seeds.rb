
Category.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Pet.create(name: "Neethu", species: "Cat", gender: "Female", age: 3, price: 450, remote_image_url: "")
cat2 = Pet.create(name: "Daniil", species: "Cat", gender: "Male", age: 12, price: 100, remote_image_url: "")
cat3 = Pet.create(name: "Rayta", species: "Cat", gender: "Female", age: 6, price: 399, remote_image_url: "")

dog1 = Pet.create(name: "Tea", species: "Dog", gender: "Female", age: 5, price: 150, remote_image_url: "")
dog2 = Pet.create(name: "Henock", species: "Dog", gender: "Male", age: 8, price: 800, remote_image_url: "")
dog3 = Pet.create(name: "Jesse", species: "Dog", gender: "Male", age: 9, price: 670, remote_image_url: "")

bird1 = Pet.create(name: "Ward", species: "Bird", gender: "Male", age: 3, price: 80, remote_image_url: "")
bird2 = Pet.create(name: "Arno", species: "Bird", gender: "Male", age: 2, price: 1000, remote_image_url: "")
bird3 = Pet.create(name: "Karlie", species: "Bird", gender: "Female", age: 1, price: 200, remote_image_url: "")

hedgehog1 = Pet.create(name: "Veranika", species: "Hedgehog", gender: "Female", age: 2, price: 100, remote_image_url: "")
hedgehog2 = Pet.create(name: "Lucy", species: "Hedgehog", gender: "Female", age: 5, price: 150, remote_image_url: "")
hedgehog3 = Pet.create(name: "Gabrijela", species: "Hedgehog", gender: "Female", age: 3, price: 200, remote_image_url: "")

category1 = Category.create(name:"Cats")
category2 = Category.create(name:"Dogs")
category3 = Category.create(name:"Birds")
category4 = Category.create(name:"Hedgehogs")
