def stock_picker(prices)
    max_profit = 0
    max_profit_days = [] # pair of best buy and sell day respectively
    prices.each_with_index do | buy, buy_day |
        prices.each_with_index do | sell, sell_day |
            profit = sell - buy
            if profit > max_profit && sell_day > buy_day # in order to sell only after buy
                max_profit = profit
                max_profit_days[0] = buy_day
                max_profit_days[1] = sell_day
            end
        end
    end
    puts "The best day to buy and sell the stocks is #{max_profit_days} with a maximum profit of $#{max_profit}"
    max_profit_days
end

stock_picker([17,3,6,9,15,8,6,1,10])