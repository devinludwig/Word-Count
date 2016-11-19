# _Word Count_

#### _A page to count instances of a word in a piece of text., 11-18-2016_

#### By _**Devin Ludwig**_

## Description

_This page takes a user input of a word and a text of any length and returns the number of instances of that word with the given text._

## Setup/Installation Requirements

* _Clone this repository._
* _Install Ruby on your machine._
* _Run the 'bundle' command in your computer's terminal._
* _Enter 'ruby app.rb' in your terminal to run the Sinatra gem._
* _Navigate to http://localhost:4567/ in your web browser._
* _You may also view it on Heroku at: https://murmuring-headland-52191.herokuapp.com/_

## Specs

* _It will return 1 when the same word is entered as both the text and the search word._
  * _Example Input: 'one', 'one'_
  * _Example Output: 1_
* _It will return the count of a word when a word is entered as the text multiple times._
  * _Example Input: 'one one one', 'one'_
  * _Example Output: 3_
* _It will return the count of a search word when the text includes other words._
  * _Example Input: 'One two one two One two', 'one'_
  * _Example Output: 2_
* _It will function when the search word is capitalized in the text._
  * _Example Input: 'one two three four one two three', 'one'_
  * _Example Output: 3_
* _It will count search word even when embedded in another word or surrounded by punctuation._
  * _Example Input: '"One lone ranger" hones the bone all alone! Will he telephone the crone? She is long gone.', 'one'_
  * _Example Output: 8_
* _It will count search word multiple times if it appears embedded multiple times in another word._
  * _Example Input: 'lonetonebonecronephonecone', 'one'_
  * _Example Output: 6_

## Support and contact details

_If you have any issues with this application please don't hesitate to contact me at devinludwig@hotyahoos.com. You are welcome to contribute to the code and please let me know if you do!_

## Technologies Used

_This was made with Ruby, utilizing Bootstrap for some of the styling._

### License

*This project is licensed under the GPL license.*

Copyright (c) 2016 **_Devin Arthur Ludwig_**
