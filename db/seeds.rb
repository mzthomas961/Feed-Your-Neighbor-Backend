# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1=User.create(name:"Matt",image:"https://vcahospitals.com/-/media/vca/images/lifelearn-images-foldered/9649/obese_dog.png?la=en&hash=B5FD814C82ADA4C17032947F4A767679",password:"matt123",borough:"Bronx")
u2=User.create(name:"Chase",image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Jason_Mantzoukas_2015.png/200px-Jason_Mantzoukas_2015.png",password:"chase123",borough:"Brooklyn")
u3=User.create(name: "Zak",image:"",password:"zak123",borough:"New  Jersey")
f1=FoodListing.create(name:"Alfredo Pasta",description:"it's pasta",image:"https://www.eatwell101.com/wp-content/uploads/2020/02/Spicy-Garlic-Butter-Pasta-1.jpg", cuisine:"Italian",user_id:2)
f2=FoodListing.create(name:"Pepperoni Pizza",description:"it's pizza",image:"https://www.recipetineats.com/wp-content/uploads/2020/05/Pepperoni-Pizza_5-SQjpg.jpg", cuisine:"Italian",user_id:1)
# n1=Notification.create(accepted:true, rejected:false, active:false,user_id:1,trade_id:1)
foods = [{
    name:"Palak Paneer",
    description:"Palak paneer is a vegetarian dish, consisting of paneer in a thick paste made from puréed spinach, called palak in Hindi, Marathi, Gujarati, and other Indian languages.",
    image:"https://spicecravings.com/wp-content/uploads/2017/08/Palak-Paneer-5-500x500.jpg",
    cuisine:"Indian",
    user_id:1
},
{
    name: "Miso Soup",
    description: "Miso soup is a traditional Japanese soup consisting of a dashi stock into which softened miso paste is mixed",
    image:"https://www.rhiansrecipes.com/wp-content/uploads/2017/01/fullsizeoutput_2fec.jpeg",
    cuisine:"Japanese",
    user_id: 2
},
{
    name: "Cinnamon Roll",
    description: "Glazed cinnamon buns with white icing",
    image: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2009/9/25/1/FNM-110109-Copy-That-003_s4x3.jpg.rend.hgtvcom.616.462.suffix/1382539149987.jpeg",
    cuisine: "American",
    user_id: 2
},
{
    name: "Jambalaya",
    description:"Jambalaya is a Creole rice dish of West African, French, and Spanish influence, consisting mainly of meat and vegetables mixed with rice. ",
    image: "https://www.swankyrecipes.com/wp-content/uploads/2019/09/Jambalaya-from-New-Orleans-1-500x500.jpg",
    cuisine: "American",
    user_id: 1
},
{
    name: "Shoyu Ramen",
    description: "Shoyu means soy sauce in Japanese. Shoyu Ramen simply refers to ramen served with a soy sauce-based broth that is usually in clear, brown color. ",
    image: "https://v1.nitrocdn.com/KQYMGOLIdXGmoAcyJsPOrQDKktgCbwtG/assets/static/optimized/rev-3bb5996/wp-content/uploads/2020/04/Spicy-Shoyu-Ramen-2179-II.jpg",
    cuisine: "Japanese",
    user_id: 3
},
{
    name: "Cherry Blossom Cookies",
    description:"Traditional japanese cherry blossoms on a butter cookie",
    image: "https://v1.nitrocdn.com/KQYMGOLIdXGmoAcyJsPOrQDKktgCbwtG/assets/static/optimized/rev-3bb5996/wp-content/uploads/2019/03/cherry-blossom-cookies-II.jpg",
    cuisine: "Japanese",
    user_id: 3
},
{
    name: "Jerk Chicken",
    description:"Spicy grilled chicken with jamaican flavors",
    image:"https://www.onceuponachef.com/images/2011/04/Grilled-Jerk-Chicken-1-1200x889.jpg",
    cuisine:"Jamaican",
    user_id: 1
}
]


foods.each do |food_hash|
    FoodListing.create(food_hash)
end
puts "SEEDED"
