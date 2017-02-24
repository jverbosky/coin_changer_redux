def make_change(amount)
  change = {}
  coins = {quarter: 25, dime: 10, nickel: 5, penny: 1}
  total = amount.to_i
  if total >= 25
    count = 0
    count = total/coins[:quarter]
    change[:quarter] = count
  end
  if total >= 10
    count = 0
    count = total/coins[:dime]
    change[:dime] = count
  end
  if total >= 5
    count = 0
    count = total/coins[:nickel]
    change[:nickel] = count
  end
  if total >= 1
    count = 0
    count = total/coins[:penny]
    change[:penny] = count
  end

    # when 50 then change[:quarter] = 2
    # when 47 then [change[:quarter] = 1, change[:dime] = 2, change[:penny] = 2]
    # when 46 then [change[:quarter] = 1, change[:dime] = 2, change[:penny] = 1]
    # when 45 then [change[:quarter] = 1, change[:dime] = 2]
    # when 42 then [change[:quarter] = 1, change[:dime] = 1, change[:nickel] = 1, change[:penny] = 2]
    # when 41 then [change[:quarter] = 1, change[:dime] = 1, change[:nickel] = 1, change[:penny] = 1]
    # when 40 then [change[:quarter] = 1, change[:dime] = 1, change[:nickel] = 1]
    # when 37 then [change[:quarter] = 1, change[:dime] = 1, change[:penny] = 2]
    # when 36 then [change[:quarter] = 1, change[:dime] = 1, change[:penny] = 1]
    # when 35 then [change[:quarter] = 1, change[:dime] = 1]
    # when 32 then [change[:quarter] = 1, change[:nickel] = 1, change[:penny] = 2]
    # when 31 then [change[:quarter] = 1, change[:nickel] = 1, change[:penny] = 1]
    # when 30 then [change[:quarter] = 1, change[:nickel] = 1]
    # when 27 then [change[:quarter] = 1, change[:penny] = 2]
    # when 26 then [change[:quarter] = 1, change[:penny] = 1]
    # when 25 then change[:quarter] = 1
    # when 22 then [change[:dime] = 2, change[:penny] = 2]
    # when 21 then [change[:dime] = 2, change[:penny] = 1]
    # when 20 then change[:dime] = 2
    # when 17 then [change[:dime] = 1, change[:nickel] = 1, change[:penny] = 2]
    # when 16 then [change[:dime] = 1, change[:nickel] = 1, change[:penny] = 1]
    # when 15 then [change[:dime] = 1, change[:nickel] = 1]
    # when 12 then [change[:dime] = 1, change[:penny] = 2]
    # when 11 then [change[:dime] = 1, change[:penny] = 1]
    # when 10 then change[:dime] = 1
    # when 7 then [change[:nickel] = 1, change[:penny] = 2]
    # when 6 then [change[:nickel] = 1, change[:penny] = 1]
    # when 5 then change[:nickel] = 1
    # when 2 then change[:penny] = 2
    # when 1 then change[:penny] = 1

  return change
end
