Pet.destroy_all
Category.destroy_all

cats = Category.create(name:"Cats")
dogs = Category.create(name:"Dogs")
birds = Category.create(name:"Birds")
hedgehogs = Category.create(name:"Hedgehogs")

cat1 = Pet.create(name: "Neethu", species: "Cat", gender: "Female", age: 3, price: 450, remote_image_url: "", category:"Cats")
cat2 = Pet.create(name: "Daniil", species: "Cat", gender: "Male", age: 12, price: 100, remote_image_url: "", category:"Cats")
cat3 = Pet.create(name: "Rayta", species: "Cat", gender: "Female", age: 6, price: 399, remote_image_url: "", category:"Cats")

dog1 = Pet.create(name: "Tea", species: "Dog", gender: "Female", age: 5, price: 150, remote_image_url: "", category:"Dogs")
dog2 = Pet.create(name: "Henock", species: "Dog", gender: "Male", age: 8, price: 800, remote_image_url: "", category:"Dogs")
dog3 = Pet.create(name: "Jesse", species: "Dog", gender: "Male", age: 9, price: 670, remote_image_url: "", category:"Dogs")

bird1 = Pet.create(name: "Ward", species: "Bird", gender: "Male", age: 3, price: 80, remote_image_url: "", category:"Birds")
bird2 = Pet.create(name: "Arno", species: "Bird", gender: "Male", age: 2, price: 1000, remote_image_url: category:"Birds")
bird3 = Pet.create(name: "Karlie", species: "Bird", gender: "Female", age: 1, price: 200, remote_image_url: "", category:"Birds")

hedgehog1 = Pet.create(name: "Veranika", species: "Hedgehog", gender: "Female", age: 2, price: 100, remote_image_url: "", category:"Hedgehogs")
hedgehog2 = Pet.create(name: "Lucy", species: "Hedgehog", gender: "Female", age: 5, price: 150, remote_image_url: "", category:"Hedgehogs")
hedgehog3 = Pet.create(name: "Gabrijela", species: "Hedgehog", gender: "Female", age: 3, price: 200, remote_image_url: "", category:"Hedgehogs")
