def stock_picker(prices)
  buy = 0
  sell = 0
  days = []
  profit = 0
  
    while buy < prices.length
      while sell < prices.length
        if profit < (prices[sell]-prices[buy]) # If the new profit is greater
          profit = [profit, (prices[sell]-prices[buy])].max
          days = [buy,sell] # Record the days
        end
        sell +=1
      end
      buy += 1
      sell = buy
    end
  return days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
