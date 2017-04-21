require 'rspec'
require 'analyze'
require 'pry'

describe 'String#analyze_word?' do
  input_words = String.new
  it('checks if the inputs are words') do
    expect(input_words.analyze_word?('by')).to(eq(true))
  end
end

describe 'String#analyze_anagram' do
  input_words = String.new
  it('checks if two words are anagrams') do
    expect(input_words.analyze_anagram('ruby', 'bury')).to(eq('These words are anagrams.'))
  end
  it('checks if two words are anagrams, regardless of case') do
    expect(input_words.analyze_anagram('Eat', 'TEa')).to(eq('These words are anagrams.'))
  end
end

describe 'String#analyze_palindrome' do
  input_words = String.new

  it('if two words are anagrams, it also checks if they are palindromes') do
    expect(input_words.analyze_palindrome('now', 'won')).to(eq('These words are palindromes.'))
  end
end

describe 'String#analyze_antigram' do
  input_words = String.new

  it('checks if two inputs are antigrams') do
    expect(input_words.analyze_antigram('hi', 'bye')).to(eq('These words are antigrams.'))
  end
end

describe 'String#analyze_characters' do
  input_words = String.new
  it('removes any non-alpha characters') do
    expect(input_words.analyze_characters('hello!')).to(eq('hello'))
  end
end

describe 'String#analyze_characters' do
  input_words = String.new
  it('removes any non-alpha characters and downcases all letters') do
    expect(input_words.analyze_characters('Hello!')).to(eq('hello'))
  end
end
