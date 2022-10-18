require_relative "board.rb"
require_relative "game.rb"

class Card
    attr_reader :value, :face_up
    @@all_cards = []

    def self.all_cards
        @@all_cards
    end

    def initialize(value)
        @value = value
        @face_up = false
        @@all_cards << self
        @revealed
    end

    def status
        return @value if @face_up == true
        nil
    end

    def hide
        @face_up = false
    end

    def reveal
        @face_up = true
    end

    def to_s
       nil
       # we may need this, purpose unclear
    end

    def ==(other_card)
        return true if self.value == other_card.value
        false
    end

end
