puts "\n<bloc-books/config/application.rb>\n"
require "bloc_works"

# Load every controller in that directory
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
# File.dirname("/home/gumby/work/ruby.rb")   #=> "/home/gumby/work")
puts "\n<bloc-books/config/application.rb>\nFile.dirname(__FILE__): #{File.dirname(__FILE__)}\n"
puts "\n<bloc-books/config/application.rb>\nFile.join(File.dirname(__FILE__), '..', 'app', 'controllers'): #{File.join(File.dirname(__FILE__), "..", "app", "controllers")}\n"
puts "\n<bloc-books/config/application.rb>\nBEFORE $LOAD_PATH: #{$LOAD_PATH}\n"

# When the application starts, ORM loads the models.
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "models")
puts "\n<bloc-books/config/application.rb>\nAFTER $LOAD_PATH: #{$LOAD_PATH}\n"
# This sets @database_filename = "db/db.sqlite"
# Then later @database_filename is used in Connection module in BlocRecord.
BlocRecord.connect_to("db/db.sqlite")

module BlocBooks
  class Application < BlocWorks::Application  # This makes "call" available to BlocBooks.
  end
end
