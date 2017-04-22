require 'sinatra'
require 'sinatra/reloader'
require './lib/analyze'
also_reload 'lib/**/*.rb'

get '/' do
  erb(:index)
end

get '/result' do
  ### The below approach is not finished, but is something to explore and get into a working state
  input_1 = params.fetch('input_string1')
  input_2 = params.fetch('input_string2')

  input_words = String.new
  if(input_words.analyze_word?(input_1, input_2))
    @final_result = 'You entered words in the english language, well done my friend.'
  else
    @final_result = 'Are you sure you entered words in the english language?'
  end

  erb(:result)
end
