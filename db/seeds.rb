# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

puts 'Cleaning database...'
Movie.destroy_all
puts 'Populating database'

url = 'http://tmdb.lewagon.com/movie/top_rated'
file = URI.open(url).read

movies = JSON.parse(file)

movies['results'].each do |movie|
  title = movie['title']
  overview = movie['overview']
  poster_url = "https://image.tmdb.org/t/p/w500/#{movie['poster_path']}"
  rating = movie['vote_average']
  movie = Movie.create(title: title, overview: overview, poster_url: poster_url, rating: rating)
  puts "#{movie.id} - #{movie.title} created"
end

puts "#{Movie.count} movies created"
