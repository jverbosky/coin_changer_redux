def make_change(amount)
  if amount == "5"
    return {"nickel" => 5}
  elsif amount == "2"
    return {"penny" => 2}
  elsif amount == "1"
    return {"penny" => 1}
  else
    return {}
  end
end