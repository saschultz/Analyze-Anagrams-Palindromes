require 'rspec'
require 'analyze'
require 'pry'

input_words = String.new

describe 'String#analyze_word?' do
  it('checks if the inputs do not contain vowels') do
    expect(input_words.analyze_word?('hr', 'hl')).to(eq(false))
  end
  it('checks if the inputs contain vowels') do
    expect(input_words.analyze_word?('ruby', 'bury')).to(eq(true))
  end
end

describe 'String#analyze_characters' do
  it('removes symbols and whitespace') do
    expect(input_words.analyze_characters('hi!', 'b@ye')).to(eq('hibye'))
  end
  it('will not accept input until it has downcase all input') do
    expect(input_words.analyze_characters('HI!', 'b@YE')).to(eq('hibye'))
  end
end

describe 'String#analyze_anagram' do
  it('checks if two words are anagrams') do
    expect(input_words.analyze_anagram('ruby', 'bury')).to(eq(true))
  end
  it('checks if two words are anagrams, regardless of case') do
    expect(input_words.analyze_anagram('Eat', 'TEa')).to(eq(true))
  end
end

describe 'String#analyze_antigram' do
  it('checks if two inputs are antigrams') do
    expect(input_words.analyze_antigram('hi', 'bye')).to(eq(true))
  end
end

describe 'String#analyze_palindrome' do
  it('if two words are anagrams, it also checks if they are palindromes') do
    expect(input_words.analyze_palindrome('now', 'won')).to(eq(true))
  end
end
