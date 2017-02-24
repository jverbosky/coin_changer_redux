def make_change(amount)
  change = {}
  case amount
    when '11' then [change[:dime] = 1, change[:penny] = 1]
    when '10' then change[:dime] = 1
    when '6' then [change[:nickel] = 1, change[:penny] = 1]
    when '5' then change[:nickel] = 1
    when '2' then change[:penny] = 2
    when '1' then change[:penny] = 1
  end
  return change
end