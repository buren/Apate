require 'spec_helper'

describe Apate do

  it 'Should be able to compute the sum of an array' do
    arr = [1,2,3,4,5]
    res = Apate.sum(arr)
    expect(res).to eq(15)

    res = Apate.sum [3, 4]
    expect(res).to eq(7)
  end

  it 'Should be able to compute the average of an array' do
    arr = [1,2,3,4,5]
    res = Apate.average(arr)
    expect(res).to eq(3)

    res = Apate.average [3, 4]
    expect(res).to eq(3.5)
  end

  it 'Should be able to compute the median of an array' do
    arr = [1,2,3,4,5]
    res = Apate.median(arr)
    expect(res).to eq(3)

    res = Apate.median [2, 3, 4, 2]
    expect(res).to eq(2.5)
  end

  describe 'estimate variance' do

    it 'should be able to estimate variance in an array' do
      res = Apate.variance [1, 2, 3, 4, 5]
      expect(res).to eq(2.5)
    end

    it 'should return NaN if only one element in array' do
      res = Apate.variance [1]
      expect(res.nan?).to be_truthy
    end
  
  end

  describe 'mode' do
    it 'should be able to find the most frequent number in an array' do
      res = Apate.mode([1,1,1,2,2,3,4,5])
      expect(res).to eq(1)
    end


    it 'should select the lowest number if there are the same number of occurenses' do
      res = Apate.mode([1,1,2,2,3,4,5])
      expect(res).to eq(1)
    end

    it 'should be able to handle negative numbers' do
      res = Apate.mode([-1,-1,-2,-2,-3,-4,-5])
      expect(res).to eq(-1)
    end
  end

end