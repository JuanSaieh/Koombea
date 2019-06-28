# frozen_string_literal: true

# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is
# 3025 minus 385 = 2640

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

require 'minitest/autorun'

class DifSumOfSquare
  def dif_sum_of_square(num)
    range = (1..num)
    sum_of_square = range.map { |n| n**2 }.sum
    square_of_sum = range.inject(:+)**2
    square_of_sum - sum_of_square
  end
end

describe DifSumOfSquare do
  before do
    @dif_sum_of_square = DifSumOfSquare.new
  end

  describe 'when we pass 3' do
    it 'must return 22' do
      @dif_sum_of_square.dif_sum_of_square(3).must_equal 22
    end
  end
end

p 'the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum is: ' +
  DifSumOfSquare.new.dif_sum_of_square(100).to_s
