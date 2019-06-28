# frozen_string_literal: true

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

# Todo
#- find multiples of 3 and 5 below 1000
#- add them

require 'minitest/autorun'

class SumOfMulti
  def sum_of_multi(num1, num2, limit)
    (0..limit).select do |num|
      (num % num1).zero? || (num % num2).zero?
    end.sum
  end
end

p "the sum of the numbers below 1000 that are divisible by 3 and 5 is: " + SumOfMulti.new.sum_of_multi(3, 5, 999).to_s

describe SumOfMulti do
  before do
    @sum_of_multi = SumOfMulti.new
  end

  describe 'number 5 is passed' do
    it 'must return 8' do
      @sum_of_multi.sum_of_multi(3, 5, 5).must_equal 8
    end
  end
end
