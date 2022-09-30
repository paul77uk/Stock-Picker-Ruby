def stock_picker stock_prices
    profit_days = [0, 0]
    result = []
    (0..stock_prices.size - 2).each { |buy_day_index| 
        (buy_day_index + 1..stock_prices.size - 1).each { |sell_day_index| 
            if stock_prices[sell_day_index] - stock_prices[buy_day_index] > profit_days[1] - profit_days[0]
                profit_days.clear
                profit_days = [stock_prices[buy_day_index], stock_prices[sell_day_index]]
                result = [buy_day_index, sell_day_index]
            end
        }
    }
    result
end

p stock_picker [17,3,6,9,15,8,6,1,10]