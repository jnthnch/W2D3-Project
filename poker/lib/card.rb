class Card 
  # VALUES = ["A"] + (2..10).to_a + ["J", "Q", "K"]
  VALUES = (0..12).to_a.freeze
  SUITS = [:S, :H, :C, :D].freeze

  def self.values 
    VALUES 
  end 

  def self.suits 
    SUITS 
  end 

  attr_reader :value, :suit, :to_s

  def initialize(value, suit)
    @value = value
    @suit = suit
    @to_s = VALUES[value - 1]
  end  
end