helpers do

  GIPHY_BASE_URL = "http://api.giphy.com/v1/stickers/search?api_key="

  def get_gif(search_term)
    json_string_response = open(GIPHY_BASE_URL + ENV["GIPHY_API_KEY"] + "&q=" + search_term + "&limit=2" + "&rating=PG").read
    ruby_hash = JSON.parse(json_string_response)
    ruby_hash["data"][rand(0..1)]["images"]["original"]["url"]
  end

end
