def make_change(amount)
  change = {}
  coins = {quarter: 25, dime: 10, nickel: 5, penny: 1}
  total = amount.to_i
  coins.each do |type, value|
    if total >= value
      change[type] = total/coins[type]
      total -= total/coins[type] * coins[type]
    end
  end
  return change
end
