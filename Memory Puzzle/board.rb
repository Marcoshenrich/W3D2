require_relative "card.rb"
require_relative "game.rb"


class Board
    attr_reader :grid
  #initialize
    #pass size, test if even, reject odd sizes
    #create array of size length with empty arrays as contents
  #populate
    #create a list of all possible cards
    #pull the required number of samples to fill the board size, double it
    #from the sample, loop through grid and randomly insert until list is depleted by shoving into array
    #redefine grid


  #render
    #


  #won?
    #iterate through, check faceup. all must be


  #reveal
    #when game is running, reveal will change condition of card
    #input will be pos, which will be standard arr

    #hash of all revealedmoves


  def initialize(size)
    size += 1 if size.odd?
    @size = size
    @grid = Array.new(size) { Array.new }
    self.populate
  end

  def populate
    alpha = ("A".."Z").to_a
    samp_array = alpha.sample(@size * 2)
    samp_array += samp_array
    samp_array.shuffle!

    new_cards = []

    samp_array.each do |value|
        new_cards << Card.new(value)
    end

    @grid.each do |row|
        row.concat(new_cards.shift(@size))
    end
  end

  def render

    puts "  " + (0...@size).to_a.join(" ")
    @grid.each_with_index do |row, idx|
        line = []

        row.each do |card|
            if card.face_up
                line << card.value
            else
                line << "_"
            end
        end

        puts "#{idx} #{line.join(" ")}"
    end
  end

  def won?
    @grid.all?{|row| row.all?{|card| card.face_up}}
  end

  def reveal(pos)
    row, col = pos
    @grid[row][col].reveal
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def valid_moves
    valid_moves_arr = []
    @grid.each_with_index do |row, i|
      row.each_with_index do |card, j|
        valid_moves_arr << [i,j] unless card.face_up
      end
    end
    valid_moves_arr
  end

end
