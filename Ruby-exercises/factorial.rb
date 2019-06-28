# frozen_string_literal: true

# 7! = 7*6*5*4*3*2*1

require 'minitest/autorun'

class Factorial
  def factorial(num)
    (1..num).inject(:*)
    # return 1 if num == 0
    # num*factorial(num-1)
  end
end

describe Factorial do
  before do
    @factorial = Factorial.new
  end

  describe 'when we pass the number 4' do
    it 'must return 24' do
      @factorial.factorial(4).must_equal 24
    end
  end
end
