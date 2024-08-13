def stock_picker(prices) 
  best_min = 0
  best_max = 0
  best_profit = 0

  prices.each_with_index do | low_price, low_index |
    prices.last(prices.length - low_index).each_with_index do |high_price, high_index| #rest of the array 
      profit = high_price - low_price
      if profit > best_profit
        best_profit = profit 
        best_min = low_index
        best_max = high_index + low_index
      end
    end
  end

[best_min, best_max]

end

puts stock_picker([17,3,15,9,15,8,6,2,1])

#puts stock_picker([17,3,6,9,15,8,6,1,10])