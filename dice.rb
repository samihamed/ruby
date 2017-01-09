class Die
  def initialize
    rolls
  end

  def rolls
    puts 'Are you ready to roll? (yes/no)'
    answer = gets.chomp
    if answer.downcase == 'yes'
      @number = 1 + rand(6)
    else
      @number = '7'
    end
  end

  def show
    @number
  end
end

puts Die.new.show
