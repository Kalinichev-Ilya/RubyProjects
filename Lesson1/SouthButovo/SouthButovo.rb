puts "You walked along South Butovo and came across sports guys. What will you do?
1. Try to run away.
2. Continue to go."

input = gets.chomp

if input == "1"
	abort "The guys easily caught you and beat you. You lose.
Game over."
else
	puts "One of the guy stepped forward and asked you \"Do you have a light?\"
1. Say that you don't smoke.
2. Give a light."

	input = gets.chomp

	if input == "2"
		abort "Afther light, the guys went done. Congratulations, you win!"
	else
		"The guys where upset and beat you. You lose.
Game over."
	end
end