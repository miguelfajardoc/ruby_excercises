# given an amount of money, return the minimum cuantity of coins
# with this options: 25, 10, 5, 2 and 1 cent. Returned in a hash
# if there are not some type coin used, the key must not be in the hash

def change(money)

  change = {}
  coins = [25, 10, 5, 2, 1]
  unless money
    puts "error"
    return
  end
  money = money.to_i
  coins.each do |coin|
    if money / coin > 0
      amount = money / coin
      money -= (amount * coin)
        change[coin] = amount
      if money == 0
        return change
      end
    end
  end
  return change

end

p change(ARGV[0])
