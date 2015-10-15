class Person

  attr_reader :name, :books

  def initialize(options={})
    @name = options[:name]
    @books = {}
  end

  def borrow(book)
    books[book.title] = book
  end

  def person_books
    if books.empty?
      "Sorry they don't have any books"
    else
      books.map do |key, book|
        book.pretty_string
      end.join("\n")
    end
  end

  def return(person_name, book_title)
    @books.delete(book_title)
    #book = books.delete(book_title)
#
    #person.return(book)

  end

  def pretty_string
    if books.size == 1
      "'#{name}' has #{books.size} book borrowed from the library"
    else
      "'#{name}' has #{books.size} books borrowed from the library"
    end
  end

end