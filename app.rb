require 'sinatra'
require 'sinatra/reloader'
require './lib/analyze'
also_reload 'lib/**/*.rb'

get '/' do
  erb(:index)
end

get '/result' do
  input_1 = params.fetch('input_string1')
  input_2 = params.fetch('input_string2')
  input_words = String.new

  if(input_words.analyze_word?(input_1, input_2))
    # @final_result = 'You entered words in the english language, well done my friend.'
    if input_words.analyze_anagram?(input_1, input_2)
      @final_result = 'These words are anagrams.'
      if input_words.analyze_palindrome?(input_1, input_2)
        @final_result = 'These words are palindromes.'
      end
    elsif input_words.analyze_antigram?(input_1, input_2)
      @final_result = 'These words are antigrams.'
    else
      @final_result = 'Are you sure you entered words in the english language? Try again my friend.'
    end
  else
    @final_result = 'Are you sure you entered words in the english language? Try again my friend.'
  end
    erb(:result)
  end
