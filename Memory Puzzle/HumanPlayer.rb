class HumanPlayer

  attr_reader :name

  def initialize(name="You!")
    @name = name
  end

  def guess_1
    puts "What's your guess? Enter as 1,2"
    guess_1 = gets.chomp.split(",").map(&:to_i)
  end

  def guess_2
    puts "What's your second guess? Enter as 3,4"
    guess_2 = gets.chomp.split(",").map(&:to_i)
  end

  def player_win
    puts "You win, #{@name}!"
    exit
  end


end
