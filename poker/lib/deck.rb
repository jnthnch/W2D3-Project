require_relative 'card.rb'

class Deck
  attr_reader :deck
  
  # def initialize(deck = Deck.all_cards)
  def initialize(deck)
    @deck = deck    
  end
  
  def self.all_cards
    deck = []
    Card.values.each do |value|
      Card.suits.each do |suit|
        deck << Card.new(value, suit)
      end
    end
    # deck
    Deck.new(deck)
  end
  
  def shuffle 
    @deck.shuffle
  end 
end