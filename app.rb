require 'sinatra'
require 'sinatra/reloader'
require './lib/analyze'
also_reload 'lib/**/*.rb'

get '/' do
  erb(:index)
end

get '/result' do
  ## First approach: chaining methods. Does not work because only the last method called with run
  @final_result = params.fetch('input_string1', 'input_string2').analyze_anagram('input_string1', 'input_string2')
  erb(:result)
end

  ### The below approach is not finished, but is something to explore and get into a working state
  # input_1 = params.fetch('input_string1')
  # input_2 = params.fetch('input_string2')

  # if(input_words.analyze_word(input_1, input_2)) == 'Please enter words in the english language.'
  #   @final_result = "Please enter words in the english language."
  #
  # if(input_words.analyze_anagram(input_1, input_2)) == 'These words are palindromes.'
  #   @final_result = "These words are anagrams."
  #
  # elsif(input_words.analyze_palindrome(input_1, input_2)) == 'These words are anagrams.'
  #   @final_result = "These words are anagrams."
  #
  # elsif(input_words.analyze_antigram(input_1, input_2)) == 'These words are antigrams.'
  #   @final_result = "These words are antigrams."
  #
  # else
  #   "fail"
  # end

#   erb(:result)
# end
