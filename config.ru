puts "<bloc-books/config.ru>"
# '.ru' is the extenstion Rack uses to designate Rack configuration files.
# 'rackup' command starts a rack server.
# By default 'rackup' runs the code in 'config.ru'.
# $ bundle exec rackup -p 3000
# 'bundle exec' pulls in the local 'BlocWorks' gem when running 'rackup'.
require './config/application'

app = BlocWorks::Application.new

use Rack::ContentType

# These four calls to map add four routes to BlocBooks when we Rackup.
# This is equivalent to "app.route(Proc.new {map("", "books#welcome")...})"
app.route do
  map "", "books#welcome"

  resources :books
  resources :libraries
end

# app: #<BlocWorks::Application:0x007fddc4afa1c8>
run(app)
