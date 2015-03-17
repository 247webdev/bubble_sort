class Array

  # my solution
  # def bubble_sort
  #   len = length - 1 # length is a count. minus 1 to match index zero based
  #   i = 0
  #   until i == len
  #     p self[i]
  #     if self[i] > self[ i + 1 ]
  #       # self[i], self[i+1] = self[i+1], self[i]
  #       temp = self[i+1]
  #       self [i+1] = self[i]
  #       self[i] = temp
  #     end
  #     i += 1
  #   end
  #   self
  # end

  # def bubble_sort
  #   self.each_with_index { |num, index|
  #     if self[ index ] > self[ index + 1 ]
  #       self[ index ], self[ index + 1 ] = self[ index + 1 ], self[ index ]
  #     end
  #   }
  #   self
  # end

  # Leo's example
  def bubble_sort
    length.times do |j|
      for i in 1...(length - j)
        if self[i] < self[i - 1]
          self[i], self[i-1] = self[i-1], self[i]
        end
      end
    end
    self
  end

  # stack overflow example
  # def bubble_sort
  #   return self if self.size <= 1 # already sorted
  #   swapped = true
  #   while swapped do
  #     swapped = false
  #     0.upto(self.size-2) do |i|
  #       if self[i] > self[i+1]
  #         self[i], self[i+1] = self[i+1], self[i] # swap values
  #         swapped = true
  #       end
  #     end    
  #   end
  #   self
  # end

end