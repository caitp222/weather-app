get '/login' do
  erb :'partials/_login', layout: false
end

post '/session' do
  login
  erb :'partials/_nav_bar', layout: false
end

post '/sessions' do
  logout
  erb :'partials/_nav_bar', layout: false
end
