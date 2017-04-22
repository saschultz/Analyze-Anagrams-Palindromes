# require 'capybara/rspec'
# require './app'
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe 'the word analyzing path', {:type => :feature} do
#   input_words = String.new
#   it 'it processes the user entry and returns if it is an anagram, antigram, or palindrome' do
#     visit '/'
#     fill_in 'input_string1', :with => 'Ruby'
#     fill_in 'input_string2', :with => 'Bury'
#     click_button 'reveal'
#     expect(page).to have_content('Thanks for entering words in the english language.')
#   end
# end
