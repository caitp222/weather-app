post '/' do
  puts params
  place = Place.find_by(name: params[:place])
  favorite = Favorite.new(user_id: session[:user_id], place_id: place.id)
  if favorite.save
    erb :'partials/_favorites', layout: false
  else
    status 422
    @errors = "You have already favorited this place."
  end
end

get '/userfavorites' do
  erb :'partials/_favorites', layout: false
end

delete '/favorites/:id' do
  favorite = Favorite.find_by(place_id: params[:id], user_id: current_user.id)
  if favorite.destroy
    erb :'partials/_favorites', layout: false
  else
    status 422
  end
end
