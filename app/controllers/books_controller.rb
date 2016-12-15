class BooksController < BlocWorks::Controller
  def welcome
    puts "\n<bloc-books/app/book_controller.rb> ()::BooksController.welcome"
    # When all data is ready and the view should display the result,
    # controllers must call 'render'.
    render :welcome, book: "Eloquent Ruby"
  end

  # This returns all of Book instances.
  def index
    puts "\n<bloc-books/app/book_controller.rb> ()::BooksController.index"
    render :index, books: Book.all
  end

  def show
    puts "\n<bloc-books/app/book_controller.rb> ()::BooksController.show\nparams: #{params}"
    book = Book.find(params['id'])
    render :show, book: book
  end

  def new
    render :new, book: Book.new
  end

  def create
    book = Book.new
    book.name = params[:book][:name]
    book.author = params[:book][:author]
    book.pages = params[:book][:pages]

    if book.save
      puts "Saved!"
      render :index, books: Book.all
    else
      puts "Failed"
      render :new, book: Book.new
    end
  end
end
