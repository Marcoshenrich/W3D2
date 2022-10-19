class ComputerPlayer
    attr_reader :name

    @@revealed_cards = Hash.new {|h,k| h[k] = []}

    def self.revealed_cards

    end

    def self.revealed_cards=(pos, grid)
      row, col = pos
      value = grid[row][col].value
      @@revealed_cards

      #to get the val of the card, we need to : _______
      #to get the position, it is passed as an arg
      #we will need to know the position and the value of the card
      #store the K,V pair in revealed cards
    end

    def initialize(name="Ahnold")
      @name = name
    end

    # get the legal moves
    # modify guess 1 and guess to what the computer is doing

    #look into the hash & query for values of length 2
    #if val is length 2, pos1 = guess 1 and pos2 == guess 2
      #choose first result from query
    #else pick rand move from valid_moves_array
    #if pos already present in hash, then do not shove
    #card is revealed and added to hash if not present

    #guess 2
    #look into the hash & query for values of length 2
    #if val is length 2, pos1 = guess 1 and pos2 == guess 2
      #choose first result from query (shouldn't be issue)
      #if pos already present in hash, then do not shove
      #card is revealed and added to hash if not present


    def hash
        #store every position when revealed
    end



    def guess_1(validmovearr)
        puts "#{@name} is making its first guess"
        validmovearr
    end

    def guess_2

    end

    def player_win
      puts "You win, #{@name}!"
      exit
    end


  end
