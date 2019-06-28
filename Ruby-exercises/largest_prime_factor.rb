# frozen_string_literal: true

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?
require 'Prime'
# require 'matrix'
require 'minitest/autorun'

class LargestPrime
  def largest_prime(num)
    Prime.prime_division(num).last.first
  end
end
  # largest = 1
  # arr.each { |prime| largest = prime[0] if prime[0] > largest}
  # largest

  p 'the highest prime number that divides 600851475143 is: ' +
    LargestPrime.new.largest_prime(600_851_475_143).to_s

describe LargestPrime do
  before do
    @largest_prime = LargestPrime.new
  end

  describe 'number 15 is passed' do
    it 'must return 5' do
      @largest_prime.largest_prime(15).must_equal 5
    end
  end

  describe 'number 13 is passed' do
    it 'must return 13' do
      @largest_prime.largest_prime(13).must_equal 13
    end
  end
end
