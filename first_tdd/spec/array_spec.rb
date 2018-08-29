require 'array.rb'

RSpec.describe Array do 
  
  describe '#my_uniq' do 
    subject(:arr) { Array.new([1,2,1,3,3]) }
    
    it "Returns an array" do 
      expect(arr.my_uniq).to be_an_instance_of(Array)
    end 
    
    it "Returns an array with unique elements" do
      expect(arr.my_uniq).to eq([1,2,3])
    end
  end 
  
  
  describe '#two_sum' do
    subject(:arr) {Array.new([-1, 0, 2, -2, 1])}
    
    it "Returns an array" do 
      expect(arr.two_sum).to be_an_instance_of(Array)
    end 
    
    it "Returns the correct indicies in the correct order" do
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end
  end
  
  describe '#my_transpose' do
    subject(:arr) {Array.new([[0, 1, 2],
                              [3, 4, 5],
                              [6, 7, 8]])}                        
    it "Returns an array" do 
      expect(arr.my_transpose).to be_an_instance_of(Array)
    end 
    
    it "Returns the correct indicies in the correct order" do
      expect(arr.my_transpose).to eq([[0, 3, 6],
                                      [1, 4, 7],
                                      [2, 5, 8]])
    end
    
  end
  
  describe '#stock_picker' do 
    subject(:arr) {Array.new([22, 15, 100, 4, 8, 240, 1000])}
    
    it 'Returns an array with 2 indices' do 
      expect(arr.stock_picker.length).to eq(2)
    end 
    
    it 'Returns the correct days' do 
      expect(arr.stock_picker).to eq([3, 6])
    end 
    
  end 
  
  
  
  
end  