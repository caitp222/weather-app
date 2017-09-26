get '/' do
  @places = Place.all
  @current_location = find_location
  erb :'index'
end
