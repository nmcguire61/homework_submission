require 'pry-byebug'

require_relative 'library'
require_relative 'book'
require_relative 'person'

require_relative 'methods'

library =Library.new name: "CodeClan Library" 

library.add_person(Person.new(name:'Fred'))
library.add_person(Person.new(name:'Wilma'))
library.add_person(Person.new(name:'Barney'))
library.add_person(Person.new(name:'Betty'))
library.add_book(Book.new(title: "Bit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feer", genre: "Science Fiction"))
library.add_book(Book.new(title: "Tries", genre: "History"))
library.add_book(Book.new(title: "Kill", genre: "Fiction"))
library.add_book(Book.new(title: "Time", genre: "Non-Fiction"))

response = menu

until response == 0

  case response
  when 1 
    create_book(library)
  when 2
    create_person(library)
  when 3
    list_all_books(library)
  when 4
    list_people(library)
  when 5
    lend_book(library)
  when 6
    return_book(library)
  when 7
    #list_borrowed_books(library)
  else
    puts "invalid option"
  end

  puts "Press enter to continue"
  gets

  response = menu
end


binding.pry; ''