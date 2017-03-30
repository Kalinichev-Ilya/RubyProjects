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

=begin
Three digits are given, which denote the number, 
month, year (requested from the user). Find the ordinal 
number of the date, starting counting from the beginning 
of the year. Consider that a year can be a leap year
=end
puts "Task 5"

puts "Enter data separated by a space.(12 12 2012)"
input = gets.chomp

data = input.split ' '

days = data[0].to_i
month = data[1].to_i
year = data[2].to_i

#find count of days by month number
def count_of_days_in(month) 
	28 + (month + (month/8))%2 + 2%month + 2*(1/month)
end

result = 0
#find count of days in all months
(1..month).each do |res_count_days|
	result += count_of_days_in(month)
end

#if year is leap +1 day
if (year%4 == 0 && year%100 != 0) || (year%400 == 0)
	result += days + 1
else 
	result += days
end

puts "#{result}"
