require 'spec_helper'

describe Apate do


  it 'should be able to compute the covariance between two arrays' do

    arr1 = [1,2,3]
    arr2 = [2,3,4]

    expected = 1.0

    c = Apate.covariance(arr1, arr2)

    expect(c).to eq(expected)

  end

  it 'should return nil if the array lengths do not match' do

    arr1 = [1,2,3]
    arr2 = [2,3,4,2]

    expected = nil

    c = Apate.covariance(arr1, arr2)

    expect(c).to eq(expected)
  end

end