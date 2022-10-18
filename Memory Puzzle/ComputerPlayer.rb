class ComputerPlayer
    attr_reader :name

    @@revealed_cards = Hash.new {|h,k| h[k] = []}
  
    def initialize(name="Ahnold")
      @name = name
    end

    # get the legal moves
    # modify guess 1 and guess to what the computer is doing
    #

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
  