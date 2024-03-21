def stock_picker(prices)
  i = 0
  profit = 0
    j = 0
    while i < prices.length
      while j < prices.length
        profit = [profit, (prices[j]-prices[i])].max
        j+=1
      end
      i += 1
      j = i
    end
  return profit
end

p stock_picker([17,3,6,9,15,8,6,1,10])