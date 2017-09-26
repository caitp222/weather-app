# Weather Comparison App
This weather app was created for a solo project during Phase 2 of Dev Bootcamp.

It uses Nokogiri to scrape Wikipedia and populate the database with a list of c.250 of the world's largest cities.
It find the user's location based on their IP address, then uses the Open Weather API to display a brief current weather description. It also searches the Giphy API for a (semi-)relevant gif.
When the user types in a city to compare the weather, an AJAX request is made that returns the weather in that city, as well as a matching gif.
