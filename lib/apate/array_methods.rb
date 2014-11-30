module Apate
  class << self

    def subtract(element, value)
      element_wise_computing(:-, element, value)
    end

    def add(element, value)
      element_wise_computing(:+, element, value)
    end

    def multiply(element, value)
      element_wise_computing(:*, element, value)
    end

    def divide(element, value)
      element_wise_computing(:/, element, value.to_f)
    end

    def pow(element, value)
      element_wise_computing(:**, element, value.to_f)
    end


    def scalar_product x, y
      return unless x.length == y.length
      value = 0

      x.each_with_index do |xi, i|
        value += xi*y[i]
      end

      value
    end


    private

      def element_wise_computing method, elements, value
        if elements.kind_of?(Array)
          elements.map do |e|
            element_wise_computing(method, e, value)
          end
        else
          elements.send(method, value)
        end
      end

  end
end