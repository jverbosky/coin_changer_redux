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
    assert_equal({penny: 1}, results)
  end

  def test_3_return_2_pennies_for_2
    amount = '2'
    results = make_change(amount)
    assert_equal({penny: 2}, results)
  end

  def test_4_return_1_nickel_for_5
    amount = '5'
    results = make_change(amount)
    assert_equal({nickel: 1}, results)
  end

  def test_5_return_1_nickel_and_1_penny_for_6
    amount = '6'
    results = make_change(amount)
    assert_equal({nickel: 1, penny: 1}, results)
  end

  def test_6_return_1_dime_for_10
    amount = '10'
    results = make_change(amount)
    assert_equal({dime: 1}, results)
  end

  def test_7_return_1_dime_and_1_penny_for_11
    amount = '11'
    results = make_change(amount)
    assert_equal({dime: 1, penny: 1}, results)
  end

  def test_8_return_1_dime_and_1_nickel_for_15
    amount = '15'
    results = make_change(amount)
    assert_equal({dime: 1, nickel: 1}, results)
  end

  def test_9_return_1_dime_and_1_nickel_and_1_penny_for_16
    amount = '16'
    results = make_change(amount)
    assert_equal({dime: 1, nickel: 1, penny: 1}, results)
  end

  def test_10_return_1_dime_and_1_nickel_and_2_pennies_for_17
    amount = '17'
    results = make_change(amount)
    assert_equal({dime: 1, nickel: 1, penny: 2}, results)
  end

  def test_11_return_2_dimes_for_20
    amount = '20'
    results = make_change(amount)
    assert_equal({dime: 2}, results)
  end

end