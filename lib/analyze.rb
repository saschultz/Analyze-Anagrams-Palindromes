class String
  define_method(:analyze_word?) do |input1, input2|
    split_input1 = input1.split("")
    split_input2 = input2.split("")

    if split_input1.include?('a') || split_input1.include?('e') || split_input1.include?('i') || split_input1.include?('o') || split_input1.include?('u') || split_input1.include?('y') &&
    split_input2.include?('a') || split_input2.include?('e') || split_input2.include?('i') || split_input2.include?('o') || split_input2.include?('u') || split_input2.include?('y')
      true
    else
      return false
    end
  end

  define_method(:analyze_characters) do |input1, input2|
    join_input = input1.concat(input2)
    join_input.gsub!(/[^[:alpha:]]/, "")
    join_input.downcase!
    join_input
  end

  define_method(:analyze_anagram) do |input1, input2|
    input1.downcase.chars.sort == input2.downcase.chars.sort
      'These words are anagrams.'
  end

  define_method(:analyze_palindrome) do |input1, input2|
    input1.reverse == input2
      'These words are palindromes.'
  end

  define_method(:analyze_antigram) do |input1, input2|
    input1 != input2
      'These words are antigrams.'
  end

end
