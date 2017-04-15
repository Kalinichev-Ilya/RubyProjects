# rectangular triangle

puts 'Hello! Enter the three sides of the triangle: '
sides = []
3.times do |_input|
  sides << gets.chop.to_i
end

# searching count of equals elements
equals_sides = sides.each_with_object(Hash.new(0)) do |side, count_|
  count_[side] += 1
end
count = equals_sides.size

# Pythagorean theorem: hypotenuse**2 = one_side**2 + second_side**2
hypotenuse = sides.max
sides.delete(hypotenuse)
sum_squares_sides = sides.inject(0) { |sum, side| sum + side**2 }

if count == 2
  puts 'Triangle is isosceles and rectangular.'
elsif count == 1
  puts 'The triangle is isosceles and equilateral, but not rectangular.'
elsif hypotenuse**2 == sum_squares_sides
  puts 'The triangle is rectangular.'
else
  puts 'Triangle isn\'t rectangular.'
end
