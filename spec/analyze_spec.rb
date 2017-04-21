require 'rspec'
require 'analyze'
require 'pry'


describe 'analyze#analyze_word?' do
  input_words = String.new
  it('checks if the two inputs are words') do
    expect(input_words.analyze_word?('bY')).to(eq(true))
  end
end

describe 'analyze#analyze_anagram' do
  input_words = String.new
  it('checks if two words are anagrams') do
    expect(input_words.analyze_anagram('ruby', 'bury')).to(eq('These words are anagrams.'))
  end
  it('checks if two words are anagrams, regardless of case') do
    expect(input_words.analyze_anagram('Eat', 'TEa')).to(eq('These words are anagrams.'))
  end
end

describe 'analyze#analyze_palindrome' do
  input_words = String.new

  it('if two words are anagrams, it also checks if they are palindromes') do
    expect(input_words.analyze_palindrome('now', 'won')).to(eq('These words are palindromes.'))
  end
end
