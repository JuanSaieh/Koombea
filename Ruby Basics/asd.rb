movies = {
  StarWars: 4.8, 
  Divergent: 4.7
  }

puts "What would you like to do? "

choice = gets.chomp

case choice
when "add"
  
  puts "What movie would you like to add? "
  title = gets.chomp.to_sym
  puts "What rating does the movie have? "
  if movies[title.to_sym] == nil
    rating = gets.chomp.to_i
    movies[title] = rating
  else
    puts "movie exists"
  end
when "update"
  puts "Updated!"
when "display"
  puts "Movies!"
when "delete"
  puts "Deleted!"
else
  puts "Error!"
end