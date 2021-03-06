require_relative 'config/application'

require 'test/unit'
require 'rack/test'

class BlocBooksTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    BlocBooks::Application.new
  end

  def test_it_is_a_200
    get '/'
    puts last_response
    assert_equal 200, last_response.status
  end

  def test_it_says_hello
    get '/'
    assert last_response.ok?
    assert_equal 'Hello Blocheads! new version', last_response.body
  end
end
