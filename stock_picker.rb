def stock_picker(prices)
	size = prices.size
	profit = 0
	days = [-1, -1]
	(0...size-1).each do |i|
		(i+1...size).each do |j|
			if prices[j] - prices[i] > profit
				profit = prices[j] - prices[i]
				days = [i, j]
			end
		end
	end
	return days
end

puts "*********************************************"
puts "* Please enter the stock prices at each day *"
puts "*  to get the best timing to sell and buy.  *"
puts "*********************************************"
puts "Please enter the prices: "
stock_prices = gets.split.map(&:to_i)
timing = stock_picker(stock_prices)
unless timing == [-1, -1] 
	puts "Buy at day #{timing[0]+1}, sell at day #{timing[1]+1}."
else
	puts "You will get no profit!"
end