require 'pry'

class BooksController < BlocWorks::Controller
  def welcome
    @book = "Eloquent Ruby"
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params["id"])
  end

  def new
    @book = Book.new
  end

  def create
    book_params = params["book"]
    name = book_params["name"]
    author = book_params["author"]
    pages = book_params["pages"]
    # binding.pry
    Book.create({"name"=>name, "author"=>author, "pages"=>pages})
  end

  def edit
    @book = Book.find(params["id"])
  end

  def update
    @book = Book.find(params["id"])
    book_params = params["book"]
    name = book_params["name"]
    author = book_params["author"]
    pages = book_params["pages"]
    binding.pry
    @book.update_attributes(name: name, author: author, pages: pages)
  end

  def delete
    @book = Book.find(params["id"])
    @book.destroy
  end
end
