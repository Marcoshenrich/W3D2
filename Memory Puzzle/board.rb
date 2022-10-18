require_relative "card"
require_relative "game"


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


  #reveal


  def initialize(size)
    size += 1 if size.odd?
    @size = size
    @grid = Array.new(size) { Array.new }
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
    # 0...size print for topline idx
    # iterate through grid / row / card 
    # if faceup = true, print value, else print _
    # farmost left before row, print row idx

    puts (0..@size).to_a.join(" ")
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

end
