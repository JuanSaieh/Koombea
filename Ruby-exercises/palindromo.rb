# frozen_string_literal: true

# A palindromic number reads the same both ways. The largest palindrome made from the product 
# of two 2 digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# TODO
# - 2 rangos de 100...999
#
require 'minitest/autorun'
start = Time.now

class Palindrome
  def palindrome?(num)
    str = num.to_s
    str == str.reverse
  end

  def largest_palindrome_digit(lower_limit, upper_limit)
    num = 0
    (lower_limit..upper_limit).each do |i|
      (i..upper_limit).each do |j|
        num = i*j if palindrome?(i*j) && num < i * j #Necesary condition -- line 31
      end
    end
    num
  end
end

puts "The largest palindrome multiplied by two 3-digit integers is: " +
  Palindrome.new.largest_palindrome_digit(100, 999).to_s

finish = Time.now
puts diff = finish - start

# 924*962 = 888888 since it finds the palindrome 906609 first, then if we dont add the second condition it will return 888888
# 913 993 = 906609

describe Palindrome do
  before do
    @palindrome = Palindrome.new
  end

  describe '10 as lower_limit and 99 as upper_limit' do
    it 'must return 9009' do
      @palindrome.largest_palindrome_digit(10, 99).must_equal 9_009
    end
  end

  describe '100 as lower_limit and 999 as upper_limit' do
    it 'must return 906609' do
      @palindrome.largest_palindrome_digit(100, 999).must_equal 906_609
    end
  end

  describe '1 as lower_limit and 9 as upper_limit' do
    it 'must fail, the answer is 9' do
      @palindrome.largest_palindrome_digit(1, 9).wont_match 8
    end
  end
end

#================================
# def is_palindrome(num)
#   arr = num.digits
#   0.upto(arr.length / 2) do |l|
#     return false if arr[l] != arr[arr.length - 1 - l]
#   end
#   true
# end
