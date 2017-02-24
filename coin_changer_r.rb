def make_change(amount)
  change = {}
  if amount == "5"
    change[:nickel] = 5
  elsif amount == "2"
    change[:penny] = 2
  elsif amount == "1"
    change[:penny] = 1
  end
  return change
end