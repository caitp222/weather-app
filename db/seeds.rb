User.delete_all
Place.delete_all
Favorite.delete_all

Place.create(name: "London", open_weather_code: "2643743")
Place.create(name: "New York", open_weather_code: "5128638")
Place.create(name: "Paris", open_weather_code: "6455259")
Place.create(name: "Milton Keynes", open_weather_code: "3333173")
Place.create(name: "Pyongyang", open_weather_code: "1871859")
Place.create(name: "Quito", open_weather_code: "3652462")
Place.create(name: "Boynton Beach", open_weather_code: "3652462")


User.create(first_name: "Caitlin", last_name: "Prentke")
User.create(first_name: "Le-Keisha", last_name: "Towner")
User.create(first_name: "Simon", last_name: "Brady")
User.create(first_name: "Sam", last_name: "Bok")
User.create(first_name: "Sarah", last_name: "Schaab")
