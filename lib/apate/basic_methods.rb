module Apate

  class << self
    def average arr
      sum(arr).to_f / arr.length
    end

    def sum arr
      arr.inject { |sum, el| sum + el }
    end

    def variance arr
      m = average arr
    
      arr = subtract(arr, m)
      scalar_product(arr, arr).to_f/(arr.length-1)
    end

    def median arr
      sorted_arr = arr.sort
      length = arr.length
      if length % 2 == 0
        average(sorted_arr[length/2-1..length/2])
      else
        sorted_arr[(length-1)/2]
      end
    end


    def mode arr
      freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
      arr.max_by { |v| freq[v] }

    end

  end

end