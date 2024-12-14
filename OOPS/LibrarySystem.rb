# Library System Using Encapsulation, Inheritance, and Polymorphism
# Design a library system where:
# A Book class stores the book's title, author, and genre (encapsulated with appropriate accessors).
# An EBook class inherits from Book and adds a method download to simulate downloading an e-book.
# A PhysicalBook class also inherits from Book and adds a method checkout to simulate borrowing a physical book.
# Use polymorphism to create an array of mixed EBook and PhysicalBook objects and display the book details with different behaviors for e-books and physical books.


class Book
  attr_reader :title, :author, :genre 
  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre
  end

  def details
    puts "Name:  #{title}"
    puts "Author: #{author}"
    puts "Genre: #{genre}"
  end
end

class EBook < Book
  def download
    puts "Downloading EBook: #{@title}"
  end
end
class PhysicalBook < Book
  def checkout
    puts "Checking out physical book: #{@title}"
  end
end

books = [
  EBook.new("Digital Fortress", "Dan Brown", "Thriller"),
  PhysicalBook.new("To Kill a Mockingbird", "Harper Lee", "Fiction"),
  EBook.new("Sapiens", "Yuval Noah Harari", "History"),
  PhysicalBook.new("1984", "George Orwell", "Dystopian")
]
books.each do |book|
  book.details #displays the title, author, and genre of the current book.
  if book.is_a?(EBook)
    book.download
  elsif book.is_a?(PhysicalBook)
    book.checkout
  end
  puts "-" * 40
end

