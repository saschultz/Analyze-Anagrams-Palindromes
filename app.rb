require 'sinatra'
require 'sinatra/reloader'
require './lib/analyze'
also_reload 'lib/**/*.rb'

get '/' do
  erb(:index)
end

get '/result' do
  @result = params.fetch('input_string1', 'input_string2').analyze_anagram('input_string1', 'input_string2').analyze_palindrome('input_string1', 'input_string2').analyze_antigram('input_string1', 'input_string2')
  erb(:result)
end
