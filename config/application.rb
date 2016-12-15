puts "\n<bloc-books/config/application.rb>\n"
require "bloc_works"

# Load every controller in that directory
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
# File.dirname("/home/gumby/work/ruby.rb")   #=> "/home/gumby/work")

# When the application starts, ORM loads the models.
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "models")
# This sets @database_filename = "db/db.sqlite"
# Then later @database_filename is used in Connection module in BlocRecord.
BlocRecord.connect_to("db/db_new.sqlite")

module BlocBooks
  class Application < BlocWorks::Application  # This makes "call" available to BlocBooks.
  end
end
