module Apate

  def self.average arr
    self.sum(arr).to_f / arr.length
  end

  def self.sum arr
    arr.inject { |sum, el| sum + el }
  end

  def self.variance arr
    m = self.average arr
  
    arr = self.subtract(arr, m)
    self.scalar_product(arr, arr).to_f/(arr.length-1)
  end

  def self.median arr
    sorted_arr = arr.sort
    length = arr.length
    if length % 2 == 0
      self.average(sorted_arr[length/2-1..length/2])
    else
      sorted_arr[(length-1)/2]
    end
  end


  def self.mode arr
    freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    arr.max_by { |v| freq[v] }

  end

end