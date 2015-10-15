def list_all_books(library)
  puts library.list_all_books
end

def list_people(library)
  puts library.list_people
end

def create_person(library)
  print "Name: "
  name = gets.chomp
  person = Person.new(name: name)

  library.add_person(person)
end

def return_book(person)
  puts person.list_people
  puts
  print "Which person is going to return a book (by name):"
  person_name = gets.chomp
  puts
  returner = person.people[person_name]
  puts returner.person_books
  print "Which book do you want to return (by name): "
  book_title = gets.chomp
  library.return(person_name, book_title)
  returner.return(person_name, book_title)
end

def lend_book(library)
  puts library.list_all_books
  puts
  print "Which book do you want to lend (by name): "
  book_title = gets.chomp
  puts
  puts library.list_people
  print "Which person is going to borrow it (by name): "
  person_name = gets.chomp

  library.lend(person_name, book_title)
end

def create_book(library)
  print "Title: "
  title = gets.chomp

  print "Genre: "
  genre = gets.chomp

  book = Book.new(title: title, genre: genre)

  library.add_book(book)
end


def menu
  puts `clear`
  puts "*** Hard Copy Rental - CodeClan Library ***"

  puts
  puts
  puts "1. Create Book"
  puts "2. Create a Memeber"
  puts "3. List all Books"
  puts "4. List all Members"
  puts "5. Lend Book"
  puts "6. Return Book"
  puts "7. List Borrowed Books"
  puts 
  puts "0. Quit"
  puts
  print "--> "
  gets.to_i
end