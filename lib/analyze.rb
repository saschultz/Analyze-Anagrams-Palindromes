class String
  ##analyzes if input is a word by looking for a vowel in the input
  define_method(:analyze_word?) do |input1, input2|
    if
      input1.length !=0 && input1.match((/[AEIOUY]+/i)) &&
      input2.length !=0 && input2.match((/[AEIOUY]+/i))
      true
    else
      false
    end
  end

  ##analyzes if input contains any non alpha characters (symbols, spaces)
  define_method(:analyze_characters) do |input1, input2|
    input1 = input1.downcase.gsub!(/\d+|\W+/, "")
    input2 = input2.downcase.gsub!(/\d+|\W+/, "")
    join_input = input1.concat(input2)
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
