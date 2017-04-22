require 'rspec'
require 'analyze'
require 'pry'

input_words = String.new

describe 'String#analyze_word?' do
  # input_words = String.new
  it('checks if the inputs are words') do
    expect(input_words.analyze_word?('hr', 'hl')).to(eq('Please enter words in the english language.'))
  end
end

describe 'String#analyze_anagram' do
  # input_words = String.new
  it('checks if two words are anagrams') do
    expect(input_words.analyze_anagram('ruby', 'bury')).to(eq('These words are anagrams.'))
  end
  it('checks if two words are anagrams, regardless of case') do
    expect(input_words.analyze_anagram('Eat', 'TEa')).to(eq('These words are anagrams.'))
  end
end

describe 'String#analyze_palindrome' do
  # input_words = String.new

  it('if two words are anagrams, it also checks if they are palindromes') do
    expect(input_words.analyze_palindrome('now', 'won')).to(eq('These words are palindromes.'))
  end
end

describe 'String#analyze_antigram' do
  # input_words = String.new
  it('checks if two inputs are antigrams') do
    expect(input_words.analyze_antigram('hi', 'bye')).to(eq('These words are antigrams.'))
  end
end

describe 'String#analyze_characters' do
  # input_words = String.new
  it('removes whitespace') do
    expect(input_words.analyze_characters('hi', 'bye')).to(eq('hibye'))
  end
  it('removes symbols') do
    expect(input_words.analyze_characters('hi!', 'b@ye')).to(eq('hibye'))
  end
  it('will downcase all input') do
    expect(input_words.analyze_characters('Hi!', 'b@YE')).to(eq('hibye'))
  end
end
