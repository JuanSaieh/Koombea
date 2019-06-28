# frozen_string_literal: true

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10001st prime number?

require 'Prime'
require 'minitest/autorun'

class Primos
  def find_prime(num)
    Prime.first(num).last
    # counter = 0
    # finder = 1
    # Prime.each() do |prime|
    #   counter += 1
    #   finder = prime
    #   break if counter == num
    # end
    # finder
  end
end

p 'the prime number 10001 is: ' + Primos.new.find_prime(10_001).to_s

describe Primos do
  before do
    @primo = Primos.new
  end

  describe 'number 3 passed' do
    it 'must return 5' do
      @primo.find_prime(3).must_equal 5
    end
  end
end
