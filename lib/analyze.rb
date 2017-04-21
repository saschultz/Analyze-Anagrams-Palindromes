define_method(:analyze_anagram) do |input1, input2|
  input1.downcase.chars.sort == input2.downcase.chars.sort
  'These words are anagrams.'
end
