require 'rspec'
require 'analyze'

describe 'analyze#analyze_anagram' do
  input_words = String.new

  it('checks if two words are anagrams') do
    expect(input_words.analyze_anagram('ruby', 'bury')).to(eq('These words are anagrams.'))
  end

  it('checks if two words are anagrams, regardless of case') do
    expect(input_words.analyze_anagram('Eat', 'TEa')).to(eq('These words are anagrams.'))
  end

end
