class Board

  #initialize
    #pass size, test if even, reject odd sizes
    #create array of size length with empty arrays as contents
  #populate
    #create a list of all possible cards
    #pull the required number of samples to fill the board size, double it
    #from the sample, loop through grid and randomly insert until list is depleted by shoving into array
    #redefine grid
  #render
  #won?
  #reveal


  def initialize(size)
    @grid = Array.new(size) { Array.new }
    @size = size
  end

  def populate
    alpha = ("A".."Z").to_a
    samp_array = alpha.sample(@size*2)
    samp_array += samp_array
    samp_array.shuffle!
    #getting elements into grid


  end

end
