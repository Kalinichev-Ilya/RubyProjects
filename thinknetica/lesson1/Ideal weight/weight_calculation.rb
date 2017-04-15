# Ideal weight
print 'Hello! What you name? '
name = gets.chop.capitalize

print 'And you height is.. '
height = gets.chomp.to_i

if height - 110 < 0
  print 'Your weight is already optimal.'
else
  print "#{name}, you ideal weight must be a #{height - 110}.\n"
end
