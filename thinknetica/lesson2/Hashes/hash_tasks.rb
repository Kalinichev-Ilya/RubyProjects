=begin
Make a hash that contains months and the number 
of days in a month. In the cycle, output those 
months, in which the number of days is exactly 30.
=end
puts "Task 1"

months = {
	January: 31,  
	February: 29,
	March: 31,
	April: 30,
	May: 31,
	June: 30,
	July: 31,
	August: 31,
	September: 30,
	October: 31,
	November: 30,
	December: 31
}
months.each {|month, days| puts "#{month}: #{days}" if days == 30}


#Fill an array with numbers from 10 to 100 in increments of 5
puts "Task 2"

array = []
(10..100).step(5) do |i|
	array << i
end
puts array

#Fill the array with Fibonacci numbers up to 100
puts "Task 3"

array = []

def fib(n)
  if n < 3
        1
    else
        fib(n - 1) + fib(n - 2)
    end
end

i = 1
while fib(i) < 100 do 
	array << fib(i)
	i += 1
end
puts array

#Fill the hash with a vowel where value is the 
#alphabetic sequence number of the letter (a - 1).
puts "Task 4"

#gets array of all chars alphabet
chars = ("a".."z").to_a
alphabet = Hash.new(0)
i = 0
#get numbers of chars
chars.each do |char| 
	alphabet[char] = i
	i += 1
end
#delete unnecessary chars
result = Hash.new(0)
["a", "e", "i", "o"].each do |char|
	 alphabet.include? char
	 result[char] = alphabet[char]
end
result.each {|key,val| puts "#{key}: #{val}"}