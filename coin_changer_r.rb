def make_change(amount)
  change = {}
  case
    when amount == "5" then change[:nickel] = 1
    when amount == "2" then change[:penny] = 2
    when amount == "1" then change[:penny] = 1
  end
  return change
end