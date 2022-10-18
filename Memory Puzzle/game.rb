require_relative "card"
require_relative "board"

#play_loop
  #ignore prompting player for size
  #render board
  #ask player for guess
  #show them the card
  #ask player for second guess
  #show the player that card
  #if cards match
    #stay face_up true
    #check for win
  #else
    #change face_up false
  #
#board

#prompt player for guess

class Game

  def initialize(size)
    @board = Board.new(size)
  end

  def run_game
    @board.render
    puts "What's your guess? Enter as 1,2"
    guess_1 = gets.chomp.split(",")
    #reveal card at ans location
    @board.reveal(guess_1)
    @board.render
    puts "What's your second guess? Enter as 3,4"
    guess_2 = gets.chomp.split(",")
    @board.reveal(guess_2)
    @board.render
    sleep(4)
    #compare answers and either keep revealed or hide both
    if @board[guess_1] == @board[guess_2]
      #do nothing, check win
      if @board.won?
        puts "Congratulations! You've won the game."
        exit
      end
    else
      @board[guess_1].hide
      @board[guess_2].hide
    end

  end



end
