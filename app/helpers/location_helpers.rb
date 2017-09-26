helpers do

  def find_location
    JSON.parse(open("http://ipinfo.io").read)["city"]
  end

end
