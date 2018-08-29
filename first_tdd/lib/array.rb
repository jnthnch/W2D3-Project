class Array  
  
  def my_uniq
    result = []
    
    self.each do |el|
      result << el unless result.include?(el)
    end
    
    result
  end
  
  def two_sum
    result = []
    
    i = 0
    while i < self.length - 1
      j = i + 1
      while j < self.length
        result << [i,j] if self[i] + self[j] == 0
        j += 1
      end
      i += 1
    end
    
    result
  end
    
  def my_transpose
    result = Array.new(self[0].length) {[]}
    
    self.each do |row|
      row.each_with_index do |el, idx|
        result[idx] << el
      end
    end
    
    result
  end
  
  def stock_picker
    result = [0, 1]
    biggest_difference = self[1] - self[0]
    i = 0 
    while i < self.length - 1
      j = i + 1
      while j < self.length 
        if self[j] - self[i] > biggest_difference
          result = [i, j]
          biggest_difference = self[j] - self[i]
        end 
        j += 1
      end 
      i += 1 
    end 
    result 
  end 
  
end 
