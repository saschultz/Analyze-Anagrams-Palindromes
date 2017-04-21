class String

  define_method(:analyze_word?) do |user_input|
    split_input = user_input.downcase.split("")
    split_input.include?('a') || split_input.include?('e') || split_input.include?('i') || split_input.include?('o') || split_input.include?('u') || split_input.include?('y')
  end

  define_method(:analyze_anagram) do |input1, input2|
    input1.downcase.chars.sort == input2.downcase.chars.sort
      'These words are anagrams.'
  end

  define_method(:analyze_palindrome) do |input1, input2|
    input1.reverse == input2
      'These words are palindromes.'
  end

  define_method(:analyze_antigram?) do |input1, input2|
    input1 != input2
  end

end
