class Library

  attr_reader :name, :people, :books

  def initialize(options={})
    @name = options[:name]
    @people = {}
    @books = {}
  end

  def return(person_name, book_title)
   person = people[person_name]
   book = books(book_title)
   book.select { |books| book }.merge! @books

  end

  def lend(person_name, book_title)
    person = people[person_name]
    book = books.delete(book_title)

    person.borrow(book)
  end

  def list_all_books
    if books.empty?
      "Sorry there are no books"
    else
      books.map do |key, book|
        book.pretty_string
      end.join("\n")
    end
  end


  def add_person(person)
    people[person.name] = person
  end


  def add_book(book)
    books[book.title] = book
  end

  def list_people
    if people.empty?
      "Naebody here."
    else
      people.map do |key, person|
        person.pretty_string
      end.join("\n")
    end
  end
end