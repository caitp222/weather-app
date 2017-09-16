before '/*' do
  if !request.xhr?
    erb :'no_javascript'
  end
end

get '/' do
  @places = Place.all
  # @current_location = Place.find_by(name: find_location)
  @current_location = Place.find_by(name: "New York")
  puts @current_location.name
  puts @current_location.open_weather_code
  erb :'index'
end

