class Board 
  
  attr_accessor :board
  
  def initialize
    @board = Array.new(3) {[]}
    @board[0] = [3,2,1]
  end
  
  def render
    @board
  end
  
end 

class Game 
  
  attr_reader :board 
  
  def initialize(board = Board.new) 
    @board = board 
  end 
  
  def get_move
    move = gets.chomp.split(",")
    raise 'wrong number' unless move.all? {|num| num.between?(0,2)}
  end 
  
  def move(arr)
  end
  
end 


