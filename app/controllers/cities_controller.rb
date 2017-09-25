post '/cities' do
  @city = params[:city] || "London"
  puts get_weather(@city)
  erb :'partials/_city_details', layout: false
end