module Apate


  def self.matrix_multiply A, B

  end

  class Matrix

    def self.create_empty(rows, cols)
      arr = Array.new(rows).map { |_| Array.new(cols) }
      Matrix.new(arr)
    end

    def initialize arr
      @rows = arr.length
      @cols = arr[0].length
      @data = arr
    end

    def get row, col
      return nil if row >= @rows || col >= cols
      @data[row][col]
    end

    def set row, col, value
      return nil if row >= @rows || col >= cols
      @data[row][col] = value
    end

  end
end