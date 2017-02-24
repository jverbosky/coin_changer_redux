require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChangerRedux < Minitest::Test

  def test_1_return_empty_array_for_0
    amount = '0'
    results = make_change(amount)
    assert_equal({}, results)
  end

end