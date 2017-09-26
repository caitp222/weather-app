doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_largest_cities"))

# doc.css('th a')[4].attributes["title"].value
# doc.css('th a')[242].attributes["title"].value

i = 4

until i == 242
  Place.create(name: doc.css('th a')[i].attributes["title"].value)
  i += 1
end
