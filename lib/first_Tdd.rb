class Array

def my_uniq
    new_arr = []

    self.each do |ele|
     new_arr << ele unless new_arr.include?(ele)
    end
    new_arr
     
 end

 def two_sum
    new_arr = []
    (0...self.length).each do |i|
        (i+1...self.length).each do |j| 
            new_arr << [i, j] if self[i] + self[j] == 0 # && i != j
        end
    end
    new_arr
end

def my_transpose
    cols = Array.new(self.length) { Array.new }

    (0...self.length).each do |i|
        # new_arr = []
        (0...self.length).each do |j|
            cols[i] << self[j][i]
        end
        # cols << new_arr
    end
    cols
    
    #self.transpose
end


def stock_picker
    new_arr = []
   m= 0

    (0...self.length).each do |i|
        (i + 1...self.length).each do |j|
            if -(self[i] - self[j]) > m
                new_arr = [i, j]
            end
        end
    end

    new_arr
end

end

end 