module Apate
  module BasicMethods

    def self.compute_average arr
      arr.inject { |sum, el| sum + el }.to_f / arr.length
    end

  end
end