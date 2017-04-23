class String
  define_method(:analyze_word?) do |input1, input2|
    if input1.length !=0 && input1.match((/[AEIOUY]+/i))
      input1 = input1.downcase.gsub!(/\d+|\W+/, "")
      true
    elsif input2.length !=0 && input2.match((/[AEIOUY]+/i))
      input2 = input2.downcase.gsub!(/\d+|\W+/, "")
    else
      false
    end
  end

  define_method(:analyze_anagram?) do |input1, input2|
    input1.downcase.chars.sort == input2.downcase.chars.sort
  end

  define_method(:analyze_antigram?) do |input1, input2|
    input1 != input2
  end

  define_method(:analyze_palindrome?) do |input1, input2|
    input1.reverse == input2
  end

end
