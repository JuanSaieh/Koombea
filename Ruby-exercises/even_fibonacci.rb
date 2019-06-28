# frozen_string_literal: true

# Each new term in the Fibonacci sequence is generated by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million,
# find the sum of the even-valued terms.
require 'minitest/autorun'

class EvenFibonacci
  def even_fibonacci(limit)
    a, b = 2, 3
    sum  = 2
    while (c = a + b) < limit do
      sum += c if c.even?
      a, b = b, c
    end
    sum
  end
end

p 'the sum of the even fibonacci numbers that dont exceed 4 million is: ' +
  EvenFibonacci.new.even_fibonacci(4_000_000).to_s

describe EvenFibonacci do
  before do
    @even_fibonacci = EvenFibonacci.new
  end

  describe 'number 3 is passed' do
    it 'must return 3' do
      @even_fibonacci.even_fibonacci(3).must_equal 2
    end
  end
end

# def sum_even_fibonacci(limit)
#   arr = [1, 2]
#   loop do
#     sum = arr[arr.length-1] + arr[arr.length-2]
#     break if sum > limit
#     arr << sum
#   end
#   arr = arr.select { |n| n.even? }
#   puts arr.sum
# end
# sum_even_fibonacci(4_000_000)
