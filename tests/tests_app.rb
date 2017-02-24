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

  def test_post_amount
    post '/amount', number: '93'
    assert(last_response.ok?)
    assert(last_response.body.include?("{:quarter=>3, :dime=>1, :nickel=>1, :penny=>3}"))
  end

end