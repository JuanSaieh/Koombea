# frozen_string_literal: true

# Anagrams:

#  word: dog
#  anagrams: god

# check #1 - if both strings have the same length
# we can store words in an array in alphabetical order
# 'hello'.split(//) puts string in array, one character per index

require 'minitest/autorun'

class Anagram
  def initialize
    @anagrams = []
    @not_anagram = []
    @words_array = []

    file = 'words_test.txt'
    f = File.open(file, 'r')
    f.each_line do |line|
      @words_array << line.chomp
    end
    f.close
  end

  def display_anagrams
    @words_array.each do |word|
      get_anagram_group(word, false)
    end
  end

  def get_anagram_group(word, finder)
    anagram_group = []
    @words_array.each do |new_word|
      if anagram?(word, new_word)
        if !@anagrams.include?(new_word) && word != new_word
          anagram_group << new_word
          @anagrams << new_word
        elsif finder
          anagram_group << new_word
        end
      end
    end

    if anagram_group.empty?
      @anagrams << word
      print "#{word}: "
      p anagram_group
    elsif !@anagrams.include? word
      @not_anagram << word unless word.empty?
    end
    anagram_group
  end

  def get_not_anagram
    @not_anagram
  end

  def has_anagram?(word)
    get_anagram_group(word, true)
  end

  def anagram?(str1, str2)
    str1.split(//).sort.eql?str2.split(//).sort
  end
end
anagram = Anagram.new
anagram.display_anagrams
p 'Words that dont have anagrams in file: '
p anagram.get_not_anagram
p 'Anagram seaches in array: '
anagram.has_anagram?('gdo')
anagram.has_anagram?('ivel')

describe Anagram do
  before do
    anagram = Anagram.new
  end

  describe 'checking is_anagram method' do
    it 'it must say both words are anagrams' do
      anagram.anagram?('god', 'dog').must_equal true
    end
  end

  describe 'checking is_anagram method' do
    it 'must return true, both words are equal' do
      anagram.anagram?('god', 'god').must_equal true
    end
  end

  describe 'checking is_anagram method' do
    it 'must return false, words are not anagrams' do
      anagram.anagram?('asd', 'god').must_equal false
    end
  end

  describe 'checking get_anagram_group method' do
    it 'when passed gdo and true must return array of words with anagrams' do
      anagram.get_anagram_group('gdo', true).must_equal(['god', 'dog'])
    end
  end

  describe 'checking get_anagram_group method' do
    it 'when passed god and false must return array of words with anagrams' do
      anagram.get_anagram_group('god', false).must_equal(['dog'])
    end
  end

  describe 'checking has_anagram_group method' do
    it 'when passed gdo must return array of words with anagrams' do
      anagram.has_anagram?('gdo').must_equal(['god', 'dog'])
    end
  end


  describe 'checking get_not_anagram method' do
    it 'must return array of words that are not anagrams' do
      anagram.display_anagrams
      anagram.get_not_anagram.must_equal(['lol', 'gfd'])
    end
  end
end
