puts "Hello! What you name?"
name = gets.chomp
puts "Hello #{name}"
sleep 1
puts "What is programming?"
sleep 2
puts "Writing very specific instructions "+
"to a very dumb, yet obedient machine."
sleep 4
puts "Which programming language should i learn first?"
sleep 4
puts "Answear on this question you will know when you will pass this test."
sleep 4
puts "Let's get start it? y/n"

input = gets.chomp

answers = ["y", "n"]

while (!answers.include?(input)) do
	puts "#Invalid input: #{input}"
	input = gets.chomp
end

if input == "y"
	puts "Nice work!"
elsif input == "n"
	puts "Ok. Then you're intelligent guy."
	sleep 2
	abort "Good bye!"
end

puts "Why do you want learn programming?"
sleep 4
puts "1. For my kids."
sleep 1
puts "2. Make money."
sleep 1
puts "3. Improve myself."
sleep 1
puts "4. I'm interested."
sleep 1
puts "5. Just for fun."
sleep 1
puts "6. I don't know, just pick one for me."
