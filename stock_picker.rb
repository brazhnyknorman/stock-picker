def stock_picker(prices)
  i = 0
  j = 0
  days = []
  profit = 0
  
    while i < prices.length
      while j < prices.length
        if profit < (prices[j]-prices[i])
          profit = [profit, (prices[j]-prices[i])].max
          days = [i,j]
        end
        j+=1
      end
      i += 1
      j = i
    end
  return days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
