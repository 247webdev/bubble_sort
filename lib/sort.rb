class Array

  def bubble_sort
    len = length
    num_pass = 1
    switched = true

    while (num_pass < len) && switched
      switched = false

      index = 0
      while index < ( len - num_pass )

        if self[index] > self[index + 1]
          self[index], self[index + 1] = self[index + 1], self[index]
          switched = true
        end
        index += 1

      end
      num_pass += 1

    end
    self

  end

end