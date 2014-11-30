module Apate

  class << self

    def matrix_multiply(a, b)
      am = Matrix.new(a)
      bm = Matrix.new(b)

      (am*bm).data
    end

    def matrix_add(a, b)
      am = Matrix.new(a)
      bm = Matrix.new(b)

      (am+bm).data
    end

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

    def data
      @data
    end

    def rows
      @rows
    end

    def cols
      @cols
    end

    def set row, col, value
      return nil if row >= @rows || col >= cols
      @data[row][col] = value
    end

    def get row, col
      @data[row][col]
    end

    def get_columns
      columns = Array.new(cols).map { |_| Array.new(rows) }
      data.each_with_index do |row, row_i|
        row.each_with_index do |e, col_i|
          columns[col_i][row_i] = e
        end
      end
      columns
    end

    def + b
      c = Matrix.create_empty rows, b.cols

      data.each_with_index do |row, row_i|
        b.get_columns.each_with_index do |col, col_i|
          c.set(row_i, col_i, get(row_i, col_i) + b.get(row_i, col_i))
        end
      end
      c
    end

    def * b
      c = Matrix.create_empty rows, b.cols

      data.each_with_index do |row, row_i|
        b.get_columns.each_with_index do |col, col_i|
          c.set(row_i, col_i, Apate.scalar_product(row, col))
        end
      end
      c
    end

  end
end