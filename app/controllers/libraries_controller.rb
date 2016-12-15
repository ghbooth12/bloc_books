class LibrariesController < BlocWorks::Controller
  def index
    @libraries = Library.all
  end

  def show
    @library = Library.find(params["id"])
  end

  def new
    @library = Library.new
  end

  def create
    library_params = params["library"]
    name = library_params["name"]
    year = library_params["year"]

    Library.create(name: name, year: year)
  end

  def edit
    @library = Library.find(params["id"])
  end

  def update
    @library = Library.find(params["id"])
    library_params = params["library"]
    name = library_params["name"]
    year = library_params["year"]

    @library.update_attributes(name: name, year: year)
  end

  def delete
    @library = Library.find(params["id"])
    @library.destroy
  end
end
