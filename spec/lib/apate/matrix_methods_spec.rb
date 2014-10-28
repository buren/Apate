require 'spec_helper'

describe Apate do


  it 'should be able to multiply 2 1x1 matrices' do
    a = [[2]]
    b = [[3]]

    res = Apate.matrix_multiply a, b

    expect(res.length).to eq(1)
    expect(res.first.length).to eq(1)
    expect(res.first.first).to eq(6)
  end

  it 'should be able to multiply 2 2x2 matrices' do
    a = [[1,0], [0,1]]
    b = [[1,2], [3,4]]

    res = Apate.matrix_multiply a, b
    expect(res.length).to eq(2)
    expect(res.first.length).to eq(2)
    expect(res).to eq(b)

  end

end