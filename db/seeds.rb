Pet.destroy_all
Category.destroy_all

cats = Category.create!(name:"Cats")
dogs = Category.create!(name:"Dogs")
birds = Category.create!(name:"Birds")
hedgehogs = Category.create!(name:"Hedgehogs")

cat1 = Pet.create!(name: "Neethu", species: "Cat", gender: "Female", age: 3, price: 450, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_scale,w_242/v1510910045/slack-imgs.com_aenppp.jpg", category: cats)
cat2 = Pet.create!(name: "Daniil", species: "Cat", gender: "Male", age: 12, price: 100, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_scale,w_242/v1510909247/cat20-591x400_g5eu4k.jpg", category: cats)
cat3 = Pet.create!(name: "Rayta", species: "Cat", gender: "Female", age: 6, price: 399, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_fill,h_200,w_242/v1510909475/Young_Male_CFA_Kitten_-_Age_2_Months_kjbzkz.jpg", category: cats)

dog1 = Pet.create!(name: "Tea", species: "Dog", gender: "Female", age: 5, price: 150, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_scale,w_242/v1510909968/slack-imgs.com_aiz0x5.jpg", category: dogs)
dog2 = Pet.create!(name: "Henock", species: "Dog", gender: "Male", age: 8, price: 800, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/v1510909475/Young_Male_CFA_Kitten_-_Age_2_Months_kjbzkz.jpg", category: dogs)
dog3 = Pet.create!(name: "Jesse", species: "Dog", gender: "Male", age: 9, price: 670, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_scale,w_242/v1510909934/slack-imgs.com_ocgmcl.jpg", category: dogs)

bird1 = Pet.create!(name: "Ward", species: "Bird", gender: "Male", age: 3, price: 80, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_scale,w_242/v1510909618/canary_xs1gzv.jpg", category: birds)
bird2 = Pet.create!(name: "Arno", species: "Bird", gender: "Male", age: 2, price: 1000, remote_image_url:"http://res.cloudinary.com/teateearu/image/upload/c_scale,w_242/v1510909693/parrot_vlp3qv.jpg", category: birds)
bird3 = Pet.create!(name: "Karlie", species: "Bird", gender: "Female", age: 1, price: 200, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_scale,w_242/v1510909751/Screen_Shot_2017-11-17_at_10.08.57_i0m9xz.png", category: birds)

hedgehog1 = Pet.create!(name: "Veranika", species: "Hedgehog", gender: "Female", age: 2, price: 100, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_scale,w_242/v1510910089/slack-imgs.com_ynhrub.jpg", category: hedgehogs)
hedgehog2 = Pet.create!(name: "Lucy", species: "Hedgehog", gender: "Female", age: 5, price: 150, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_scale,w_242/v1510910126/14e3b52291894c90b561e2e394eab5ef_crqcxh.jpg", category: hedgehogs)
hedgehog3 = Pet.create!(name: "Gabrijela", species: "Hedgehog", gender: "Female", age: 3, price: 200, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_scale,w_242/v1510910226/why-a-pygmy-hedgehog-is-the-perfect-pet-10-pictures-4_a8clqi.jpg", category: hedgehogs)

