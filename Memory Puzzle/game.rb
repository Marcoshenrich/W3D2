require_relative "card.rb"
require_relative "board.rb"

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
    while true
        puts "What's your guess? Enter as 1,2"
        guess_1 = gets.chomp.split(",").map(&:to_i)
        #reveal card at guess location
        system("clear")
        @board.reveal(guess_1)
        @board.render
        puts "What's your second guess? Enter as 3,4"
        guess_2 = gets.chomp.split(",").map(&:to_i)
        system("clear")
        @board.reveal(guess_2)
        @board.render
        sleep(2)
        #compare guesses and either keep revealed or hide both
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
        system("clear")
        @board.render
    end

  end



end

