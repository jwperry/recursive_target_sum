# frozen_string_literal: true

# This class will allow you to calculate all possible combinations of candidate
# numbers in an array that add up to a target number, uniquely.
# Ex: candiates: [1, 2, 4], target: 4
# => [[1, 1, 1, 1], [1, 1, 2], [2, 2], [4]]
class TargetSum
  def solve(candidates, target)
    result = try_each candidates, target
    clean_result result
  end

  def try_each(candidates, target, test_match = [0], solution_set = [])
    candidates.each do |c|
      if (test_match.reduce(&:+) + c) == target
        solution_set << test_match.clone.push(c)
      elsif (test_match.reduce(&:+) + c) < target
        solution_set = try_each(candidates, target, test_match.clone.push(c), solution_set)
      end
    end
    solution_set
  end

  def clean_result(result)
    result = result.map { |r| r.reject(&:zero?) }
    result.map(&:sort).uniq
  end
end
