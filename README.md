Word Analyzing Webpage

#### A page that will return if entered words are anagrams, antigrams, or palindromes, 04.21.2017

#### By Sara Schultz

## Description

As the first independent project at Epicodus as a Ruby student, this project was to create a website where a user could enter two words. The site would process the user input through defined methods to return if the words are anagrams (words containing the same letters), antigrams (words that do not contain like letters), or a palindrome (words that are spelt the same way forwards and backwards).

## Specifications

| Behavior | Input | Output |
|----------|:-----:|:------:|
| The program will check if two words are anagrams | 'ruby' 'bury' | 'These words are anagrams' |
| The program will check for anagrams regardless of case  | 'Eat' 'TEa' | 'These words are anagrams' |
| The program will check if a word is a palindrome | 'now' 'won' | 'These words are palindromes.' |
| The program will not allow words outside of the english language. (words not containing vowels.) | 'nm' 'th' | | 'Please enter words in the english language.' |
| The program will check if the words are antigrams | 'hi' 'bye' | 'These words are antigrams' |
| The program will account for multiple words without taking in punctuations | 'Hello!' 'gooBye.' | 'hello' 'goodbye' |

## Setup/Installation Requirements

* Copy the URL to this repository
* Open terminal and navigate to the desktop
* Clone this repository using command: git clone "insert-url-here"
* Open code in text editor of choice

## Known Bugs

While all defined methods in analyze.rb are working and passing through rspec, not all methods are being called. Therefore, the site is not functioning to it's expected state. The code needs to be developed further in app.rb so that all defined methods are called on the user input. Approaches that I will continue to develop will include branching logic in app.rb or develping a master method that contains all defined methods in analyze.rb. In it's current state, integration specs will pass -but only for analyzing anagrams. There are comments in app.rb with incomplete code to be developed further.

## Support and contact details

For support, questions, comments or ideas contact Sara: saschultz8@gmail.com

## Technologies Used

HTML, Bootstrap, Ruby, Sinatra, Capybara Integration Testing, rspec Gem, BDD

### License

Open source.

Copyright (c) 2017 **Sara Schultz**
