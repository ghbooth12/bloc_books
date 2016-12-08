class BooksController < BlocWorks::Controller
  def welcome
    puts "\n\n>>>>>>>>>>welcome method is showing"
    # When all data is ready and the view should display the result,
    # conotrollers must call 'render'.
    render :welcome, book: "Eloquent Ruby"
  end

  # This returns all of Book instances.
  def index
    render :index, books: Book.all
  end
end
