module Apate

  def self.subtract(element, value)
    if element.kind_of?(Array)
      element.map do |e|
        self.subtract(e, value)
      end
    else
      element - value
    end
  end

  def self.scalar_product x, y
    return unless x.length == y.length
    value = 0.0

    x.each_with_index do |xi, i|
      value += xi*y[i]
    end

    value
  end

end