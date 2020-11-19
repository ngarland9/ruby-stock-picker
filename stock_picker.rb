def stock_picker(array)
  profits = {}

  array.each_with_index do |price1, index1|
      array.each_with_index do |price2, index2|
          if index2 > index1
              profits[[index1, index2]] = price2 - price1
          end
      end
  end

  profits = profits.sort_by {|k, v| v}

  max_profit = profits[-1]

  puts "Buy on day #{max_profit[0][0]} and sell on day #{max_profit[0][1]} for the maximum profit of #{max_profit[1]}$"

end



stock_picker([17,3,6,9,15,8,6,1,10])