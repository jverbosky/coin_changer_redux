require "minitest/autorun"
require_relative "coin_changer_r.rb"

class TestCoinChangerRedux < Minitest::Test

  def test_1_return_empty_array_for_0
    amount = '0'
    results = make_change(amount)
    assert_equal({}, results)
  end

  def test_2_return_1_penny_for_1
    amount = '1'
    results = make_change(amount)
    assert_equal({"penny" => 1}, results)
  end

  def test_3_return_2_pennies_for_2
    amount = '2'
    results = make_change(amount)
    assert_equal({"penny" => 2}, results)
  end

  def test_4_return_1_nickel_for_5
    amount = '5'
    results = make_change(amount)
    assert_equal({"nickel" => 5}, results)
  end

end