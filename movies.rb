movies = {
  Lord_Of_The_Rings: 10,
  The_Hobbit: 8,
  Star_Wars: 9,
  Only_The_Strong: 11
}
puts "What do you wanna do?"
choice = gets.chomp

case choice.downcase
   when "add"
       puts "Give me a movie title!"
       title = gets.chomp
       if movies[title.to_sym] != nil
           puts title + " is already in the hash!"
       else
           puts "Give me a rating for that flic!"
           rating = gets.chomp
           movies[title.to_sym] = rating.to_i
       end
   when "update"
       puts "Give me a movie title!"
       title = gets.chomp
       if movies[title] = nil
           puts title + " is not stored in the hash!"
       else
           puts "Give it a new rating!"
           rating = gets.chomp
           movies[title.to_sym] = rating.to_i
       end
   when "display"
       movies.each {|movie, rating|
           puts "#{movie}: #{rating}"
       }
   when "delete"
       puts "Which movie do you want to delete?"
       title = gets.chomp
       if movies[title] = nil
           puts "Error!"
       else
           puts title + " has been kicked out of the hash!"
           movies.delete(title)
       end
   else
       puts "Error!"
end
