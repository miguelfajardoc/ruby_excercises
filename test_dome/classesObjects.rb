# a class is a custome data type
class Book
  attr_accessor :title, :author, :pages
  def initialize(title, author, pages)
    puts "Creating Book " + title
    @title = title
    @author = author
    @pages = pages
  end
end

book1 = Book.new("Game of thrones","RR Martin", 500)

p book1

book2 = Book.new("Lord of the rings", "Tolkein", 500)

p book2
