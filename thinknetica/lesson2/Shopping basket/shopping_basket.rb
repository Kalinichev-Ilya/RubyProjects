basket = Hash.new

total_price = 0
total_count = 0

exit = false
until exit do
  print "Product name: "
  product = gets.chomp.downcase

  #input loop
  if (product == "exit")
  	exit = true
  else
  	summ = Hash.new
  	basket[product] = ""

    print "Price: "
    price = gets.chomp.to_i
    summ[price] = ""

    print "Count: "
    count = gets.chomp.to_f

    #added in hash basket => {price, count}
    summ[price] = count
    basket[product] = summ

    #summ total price
    summ.each do |price, count| 
    	total_price += price
    	total_count += count
    end
  end

  #intermediate result
  puts "------------------------"
  basket.each do |product, summ|
  	print "#{product}: "
  	summ.each{|price, count| 
  		puts "#{price} * #{count} = #{price*count}"}
    end
  puts "------------------------"
end

puts "------ Total #{total_price * total_count} -------"