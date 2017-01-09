class Dragon

  def initialize dname
    @name = dname
    @asleep = false
    @stuffInBelly = 10
    @stuffInIntestine = 0

    puts @name + " has hatched from it's egg!"
  end

  def feed
    puts "You feed " + @name + "."
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts "You walk " + @name + "."
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts "You put " + @name + " to bed."
    @asleep = true
    3.times do
      if @asleep
        puts @name + " snores, filling the room with smoke."
        passageOfTime
      end
    end

    if @asleep
      @asleep = false
      puts @name + " wakes up slowly."
    end
  end

  private

  def hungry?
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >=8
  end

  def passageOfTime
    if @stuffInBelly > 0
      @stuffInBelly = @stuffInBelly - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts @name + " is starving! In desperation, he ate YOU!"
      exit
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts "Whoops! " + @name + " had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts @name + "'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts @name + " does the potty dance..."
    end
  end
end

puts "Do you want to hatch a dragon egg? (y/n)"
answer = gets.chomp
if answer.downcase == "y"
  puts "What do you want to call your dragon?"
  dname = gets.chomp
  puts dname.to_s.capitalize + " is a wonderful name."
  pet = Dragon.new dname.capitalize
  while (@stuffInBelly.to_i >= 0)
    puts "Feed / Walk / Sleep"
    answer = gets.chomp
    if answer.downcase == 'feed'
      pet.feed
    elsif answer.downcase == 'walk'
      pet.walk
    elsif answer.downcase == 'sleep'
      pet.putToBed
    else
      puts dname.to_s.downcase.capitalize + " ate you out of boredom..."
      exit
    end
  end
else
  exit
end
