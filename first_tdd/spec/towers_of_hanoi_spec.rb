require 'towers_of_hanoi.rb'

RSpec.describe Board do 
  
  describe '#initialize' do
    subject(:gameboard) {Board.new}
    
    it "Returns 3 subarrays" do
      expect(gameboard.board[0]).to be_an(Array)
      expect(gameboard.board[1]).to be_an(Array)
      expect(gameboard.board[2]).to be_an(Array)
    end
    
    it "First subarray should have 3 discs" do
      expect(gameboard.board[0]).to eq([3,2,1])
    end
  end 
  
end 

RSpec.describe Game do
  subject(:game) {Game.new}

  describe '#initialize' do    
    let(:board) {double('board')}
  
    it 'Initializes with a board' do 
      # allow(board).to receive(:initialize).and_return([[3, 2, 1], [], []])
      expect(game.board).to be_an_instance_of(Board)
  
    end 
  end

  # describe '#get_move' do 
  #   it 'Returns an array of 2 indices' do 
  #     expect(game.get_move).to be_an(Array)
  #     expect(game.get_move.length).to eq(2)
  #   end 
  # 
  #   it 'Raises an error for incorrect inputs' do 
  #     expect { game.get_move }.to raise_error(ArgumentError)
  #   end 
  # 
  # end 
  
  describe '#move' do
    
  end 

end 