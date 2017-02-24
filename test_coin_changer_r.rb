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

  def test_6_return_1_nickel_and_2_pennies_for_7
    amount = '7'
    results = make_change(amount)
    assert_equal({nickel: 1, penny: 2}, results)
  end

  def test_7_return_1_dime_for_10
    amount = '10'
    results = make_change(amount)
    assert_equal({dime: 1}, results)
  end

  def test_8_return_1_dime_and_1_penny_for_11
    amount = '11'
    results = make_change(amount)
    assert_equal({dime: 1, penny: 1}, results)
  end

  def test_9_return_1_dime_and_2_pennies_for_12
    amount = '12'
    results = make_change(amount)
    assert_equal({dime: 1, penny: 2}, results)
  end

  def test_10_return_1_dime_and_1_nickel_for_15
    amount = '15'
    results = make_change(amount)
    assert_equal({dime: 1, nickel: 1}, results)
  end

  def test_11_return_1_dime_and_1_nickel_and_1_penny_for_16
    amount = '16'
    results = make_change(amount)
    assert_equal({dime: 1, nickel: 1, penny: 1}, results)
  end

  def test_12_return_1_dime_and_1_nickel_and_2_pennies_for_17
    amount = '17'
    results = make_change(amount)
    assert_equal({dime: 1, nickel: 1, penny: 2}, results)
  end

  def test_13_return_2_dimes_for_20
    amount = '20'
    results = make_change(amount)
    assert_equal({dime: 2}, results)
  end

  def test_14_return_2_dimes_and_1_penny_for_21
    amount = '21'
    results = make_change(amount)
    assert_equal({dime: 2, penny: 1}, results)
  end

  def test_15_return_2_dimes_and_2_pennies_for_22
    amount = '22'
    results = make_change(amount)
    assert_equal({dime: 2, penny: 2}, results)
  end

  def test_16_return_1_quarter_for_25
    amount = '25'
    results = make_change(amount)
    assert_equal({quarter: 1}, results)
  end

  def test_17_return_1_quarter_and_1_penny_for_26
    amount = '26'
    results = make_change(amount)
    assert_equal({quarter: 1, penny: 1}, results)
  end

  def test_18_return_1_quarter_and_2_pennies_for_27
    amount = '27'
    results = make_change(amount)
    assert_equal({quarter: 1, penny: 2}, results)
  end

  def test_19_return_1_quarter_and_1_nickel_for_30
    amount = '30'
    results = make_change(amount)
    assert_equal({quarter: 1, nickel: 1}, results)
  end

  def test_20_return_1_quarter_and_1_nickel_and_1_penny_for_31
    amount = '31'
    results = make_change(amount)
    assert_equal({quarter: 1, nickel: 1, penny: 1}, results)
  end

end