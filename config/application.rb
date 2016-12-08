require "bloc_works"

# Load every controller in that directory
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
# File.dirname("/home/gumby/work/ruby.rb")   #=> "/home/gumby/work")

module BlocBooks
  class Application < BlocWorks::Application  # This makes "call" available to BlocBooks.
  end
end
