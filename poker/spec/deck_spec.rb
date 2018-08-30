require 'deck.rb'

RSpec.describe Deck do
  subject(:my_deck) do 
    Deck.new(
      [double('card1', :value => 1, :suit => :S), 
       double('card2', :value => 10, :suit => :Q),
       double('card3', :value => 7, :suit => :D)
      ])
  end
  
  describe '#initialize' do 
    it "should be an array" do
      expect(my_deck.deck).to be_an(Array)
    end

    it "should have card values" do
      expect(my_deck.deck.first.value).to be >= 0
      expect(my_deck.deck.first.value).to be <= 12
    end
  end
  
  # describe '#shuffle' do 
  #   it 'should shuffle the cards' do 
  #     expect(my_deck.deck.shuffle!).to match_array(['card1', 'card2', 'card3'])
  #   end 
  # end 
  
  describe '#shuffle' do 
    it 'should shuffle the cards' do 
      expect(my_deck.deck.shuffle!).not_to eq(my_deck.deck)
    end 
  end 
  # describe "#self.all_cards" do
  #   it "should initialize a deck with 52 cards" do
  #     Deck.all_cards
  #     expect(my_deck.deck.length).to eq(52)
  #   end  
  # end
  
  
  
end