require 'target_sum'

target = TargetSum.new

describe 'solve and try_each' do
  it 'takes an array of candidates and a target and returns all combinations of candidates that add up to the target' do
    expect(target.solve([2, 4], 6)).to eq [[2, 2, 2], [2, 4]]
    expect(target.solve([1, 3], 4)).to eq [[1, 1, 1, 1], [1, 3]]
    expect(target.solve([1, 2, 3], 6)).to eq [[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 3], [1, 1, 2, 2], [1, 2, 3], [2, 2, 2], [3, 3]]
    expect(target.solve([1, 5, 10], 10)).to eq [[1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 5], [5, 5], [10]]
  end
end

describe 'clean_result' do
  it 'takes an array that may include zeroes and duplicates and removes them' do
    expect(target.clean_result([[0, 1, 2], [2, 1, 0], [1, 0, 2], [3, 0, 4]])).to eq [[1, 2], [3, 4]]
  end
end
