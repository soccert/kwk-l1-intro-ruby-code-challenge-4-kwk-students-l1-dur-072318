#write out your code here

quarters = 25
dimes = 10
nickels = 5
pennies = 1

value_quarters = 0
value_dimes = 0
value_nickels = 0
value_pennies = 0

coins_value = {"quarters" => value_quarters, "dimes" => value_dimes, "nickels" => value_nickels, "pennies" => value_pennies}

def least_coins(coins)
  if coins% quarters = 0
    value_quarters = coins / 25
    value_quarters = value_quarters.to_i
    coins_qd = value_quarters * 25
    coins = coins - coins_qd
  end
  
  if coins% dimes >= 0
    value_dimes = coins / 10
    value_dimes = value_dimes.to_i
    coins_dd = value_dimes * 10
    coins = coins - coins_dd
  end
  
  if coins% nickels >= 0
    value_nickels = coins / 5
    value_nickels = value_nickels.to_i
    coins_nd = value_nickels * 5
    coins = coins - coins_nd
  end
  
  if coins% pennies >= 0
    value_pennies = coins / 1
    value_pennies = value_pennies.to_i
    coins_pd = value_pennies * 1
    coins = coins - coins_pd
  end
  
  puts "You have #{value_quarters} quarters, #{value_dimes} dimes, #{value_nickels} nickels, #{value_pennies} pennies."
  
end

least_coins(34)