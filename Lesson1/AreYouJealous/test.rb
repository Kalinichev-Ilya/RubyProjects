#This programm realize test.
#This test determines the programming language that is most
#suitable for the person who will pass this test.

puts "Hello! What you name?"
name = gets.chomp
puts "Hello #{name}!"

#Array with intro text.
intro = [
	"What is programming?",
	"Writing very specific instructions "+
	"to a very dumb, yet obedient machine.",
	"Which programming language should i learn first?",
	"Answear on this question you will "+
	"know when you will pass this test.",
	"Let's get start it? y/n"
]

#Print intro array with delay 1 sec.
intro.each do |element|
	puts element
	sleep 1
end

input = gets.chomp

answers = ["y", "n"]

#Validate input on answer.
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

#Array with fist question. 
first_q = [
	"Why do you want learn programming?",
	"1. For my kids.",
	"2. Make money.",
	"3. Improve myself.",
	"4. I'm interested.",
	"5. Just for fun.",
	"6. I don't know, just pick one for me."
]

#Print first question array with delay 1 sec.
first_q.each do |element|
	puts element
	sleep 1
end

#First question
input = gets.chomp

answers = (1..6).to_a.to_s

#Validate input on answer.
while (!answers.include?(input)) do
	puts "#Invalid input: #{input}"
	input = gets.chomp
end

if input == "1"
	abort "Start with Scratch, then move on to Python!"
end

#---------------Don't forget for input = 2. Make money!----

if input == "6"
	abort "I don't know, just pick one for me. Use Python!"
end

#If answer is 3, 4 or 5.
if (input == "3" || input == "4" || input == "5" )
	puts "Have a brilliant idea/platform in mind?"
	sleep 1
	puts "1. Nope. Just want to get started."
	sleep 1
	puts "2. YES."
end

#Second question
input = gets.chomp

answers = ["1", "2"]
puts " ANSWER VALIDATE." + (answers.include?(input)).to_s

#Validate input on answer.
while (!answers.include?(input)) do
	puts "#Invalid input: #{input}"
	input = gets.chomp
end

if input == "1"
	puts "I prefer to learn thing..."
	sleep 1
	puts "1. The easy way."
	sleep 1
	puts "2. The best way."
	sleep 1
	puts "3. The really hard way"+
	" (but easer to pick up other languages in the future)"
	sleep 1
	puts "4. The slightly harder way."
end

#---------------Don't forget for input = 2. YES!----------

#Third question
input = gets.chomp

answers = (1..4).to_a.to_s

#Validate input on answer.
while (!answers.include?(input)) do
	puts "#Invalid input: #{input}"
	input = gets.chomp
end

if (input == "1" || input == "2")
	abort "Python!"
end

if input == "3"
	abort "C++."
end

if input == "4"
	puts "Auto or manual car?"
	sleep 1
	puts "1. Auto."
	sleep 1
	puts "2. Manual"
	sleep 1
end

#Fourth question
input = gets.chomp

answers = (1..2).to_a.to_s

#Validate input on answer.
while (!answers.include?(input)) do
	puts "#Invalid input: #{input}"
	input = gets.chomp
end

if input == "1"
	abort "Java!"
end

if input == "2"
	abort "C."
end