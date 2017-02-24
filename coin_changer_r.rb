def make_change(amount)
  change = {}
  coins = {quarter: 25, dime: 10, nickel: 5, penny: 1}
  total = amount.to_i

  coins.each do |type, value|
    count = 0
    if total >= value
      count = total/coins[type]
      change[type] = count
      total -= count * coins[type]
    end
  end

  # if total >= 25
  #   count = 0
  #   count = total/coins[:quarter]
  #   change[:quarter] = count
  #   total -= count * coins[:quarter]
  # end
  # if total >= 10
  #   count = 0
  #   count = total/coins[:dime]
  #   change[:dime] = count
  #   total -= count * coins[:dime]
  # end
  # if total >= 5
  #   count = 0
  #   count = total/coins[:nickel]
  #   change[:nickel] = count
  #   total -= count * coins[:nickel]
  # end
  # if total >= 1
  #   count = 0
  #   count = total/coins[:penny]
  #   change[:penny] = count
  #   total -= count * coins[:penny]
  # end
  return change
end
