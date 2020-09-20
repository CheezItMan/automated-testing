
# card.rb

VALID_SUITS = [:hearts, :diamonds, :clubs, :spades]

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    unless VALID_SUITS.include? suit
      raise ArgumentError, "Invalid suit"
    end

    if value < 1 || value > 13
      raise ArgumentError, "#{value} is an invalid value"
    end


    @value = value
    @suit = suit
    

  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
