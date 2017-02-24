require 'minitest/autorun'
require 'rack/test'
require_relative '../app.rb'

class TestApp < Minitest::Test
  include Rack::Test::Methods

  def app
    CoinChangerReduxApp
  end

  def test_get_entry_page
    get '/'
    assert(last_response.ok?)
    assert(last_response.body.include?('Please enter a number to make change:'))
    assert(last_response.body.include?('<form method="post" action="amount">'))
    assert(last_response.body.include?('<input type="text" name="number">'))
  end
end