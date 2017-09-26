post '/cities' do
  @city = params[:city]
  erb :'partials/_city_details', layout: false
end
