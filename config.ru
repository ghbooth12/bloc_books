# '.ru' is the extenstion Rack uses to designate Rack configuration files.
# 'rackup' command starts a rack server.
# By default 'rackup' runs the code in 'config.ru'.
# $ bundle exec rackup -p 3000
# 'bundle exec' pulls in the local 'BlocWorks' gem when running 'rackup'.
require './config/application'
run BlocWorks::Application.new
