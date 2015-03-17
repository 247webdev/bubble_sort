class Array

  def bubble_sort
    len = length
    num_pass = 1

    self.each do

      index = 0
      while index < ( len - num_pass )

        if self[index] > self[index + 1]
          self[index], self[index + 1] = self[index + 1], self[index]
        end
        index += 1

      end
      num_pass += 1

    end
    self

  end

end