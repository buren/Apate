require 'spec_helper'

describe Apate do

  it 'Should be able to compute the average of an array' do
    arr = [1,2,3,4,5]
    res = Apate.compute_average(arr)
    expect(res).to eq(3)

    res = Apate.compute_average [3, 4]
    expect(res).to eq(3.5)
  end

end