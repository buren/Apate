module Apate

  def self.covariance x, y
    xl = x.length
    yl = y.length

    return unless xl == yl

    xm = self.average x
    ym = self.average y

    self.scalar_product(self.subtract(x, xm), self.subtract(y, ym))
  end

end