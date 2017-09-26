helpers do

  WEATHER_BASE_URL = "http://api.openweathermap.org/data/2.5/weather?q="

  def get_weather(city)
    json_string_response = open(WEATHER_BASE_URL + city + "&APPID=" + ENV["OPEN_WEATHER_API_KEY"]).read
    JSON.parse(json_string_response)
  end

  def weather_description(city)
    get_weather(city)["weather"][0]["description"]
  end

  def giphy_weather_description(city)
    weather_description(city).split(" ").join("+")
  end

  def max_temperature(city)
    (get_weather(city)["main"]["temp_max"].to_i - 273.15).round
  end

  def min_temperature(city)
    (get_weather(city)["main"]["temp_min"].to_i - 273.15).round
  end

end
