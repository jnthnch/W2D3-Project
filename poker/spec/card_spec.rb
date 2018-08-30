require 'card.rb'

RSpec.describe Card do 
  subject(:card) {Card.new(1, :S)}
  
  describe '#initialize' do 
    it 'Holds a value' do
      expect(card.value).to eq(1)
    end
        
    it 'Holds a suit' do
      expect(card.suit).to eq(:S)
    end    
  end 
end 