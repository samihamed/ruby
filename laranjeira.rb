class Tree

  def initialize type
    @type = type
    @age = 1
    puts "You planted this " + @type.downcase + " tree."
  end

  def height
    @height = @age
    puts @height.to_s + "m tall already!"
    oneYearPasses
  end

  def countTheOranges
    theOranges = 0
  end

  private
  def oneYearPasses
    @oranges = @age * 2
    if @age >= 10
      puts "Tree is rip."
      exit
    elsif @age >= 5
      puts "Your tree has now " + @oranges.to_s + " oranges!"
      puts "How many do you pick?"
      answer = gets.chomp.to_i
      theOranges = answer.to_i
        if theOranges > @oranges
          puts "You can't pick more than " + @oranges.to_s + " oranges this year."
        else
          puts "You have " + theOranges.to_s + " oranges in your basket and left " + (@oranges - theOranges).to_s + " on the tree."
        end
      @age += 1
    else
      @age += 1
      puts 'Your tree ages.'
    end
  end
end

friend = Tree.new 'Orange'
friend.height
friend.height
friend.height
friend.height
friend.height
friend.height
friend.height
friend.height
friend.height
friend.height
