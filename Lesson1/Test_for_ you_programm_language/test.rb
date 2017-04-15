# This programm realize test.
# This test determines the programming language that is most
# suitable for the person who will pass this test.

puts 'Hello! What you name?'
name = gets.chomp
puts "Hello #{name}!"

# Array with intro text.
intro = [
  'What is programming?',
  'Writing very specific instructions '\
    'to a very dumb, yet obedient machine.',
  'Which programming language should i learn first?',
  'Answear on this question you will '\
    'know when you will pass this test.',
  "Let's get start it? y/n"
]

# Print intro array with delay 1 sec.
intro.each do |element|
  puts element
  sleep 1
end

input = gets.chomp

answers = %w[y n]

# Validate input on answer.
until answers.include?(input)
  puts "#Invalid input: #{input}"
  input = gets.chomp
end

if input == 'y'
  puts 'Nice work!'
elsif input == 'n'
  puts "Ok. Then you're intelligent guy."
  sleep 2
  abort 'Good bye!'
end

# Array with fist question.
first_q = [
  'Why do you want learn programming?',
  '1. For my kids.',
  '2. Make money.',
  '3. Improve myself.',
  "4. I'm interested.",
  '5. Just for fun.',
  "6. I don't know, just pick one for me."
]

# Print first question array with delay 1 sec.
first_q.each do |element|
  puts element
  sleep 1
end

# First question
input = gets.chomp

answers = (1..6).to_a.to_s

# Validate input on answer.
until answers.include?(input)
  puts "#Invalid input: #{input}"
  input = gets.chomp
end

abort 'Start with Scratch, then move on to Python!' if input == '1'

# Variable for joining branches with the same outcome.
label = nil

if input == '2'
  puts '1. Get a job.'
  sleep 1
  puts '2. I have a startup idea!'
  sleep 1

  input = gets.chomp
  answers = (1..2).to_a.to_s
  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  label = 'work_platform_branch' if input == '1'

  label = 'platform_branch' if input == '2'
end

abort "I don't know, just pick one for me. Use Python!" if input == '6'

# If answer is 3, 4 or 5.
if input == '3' || input == '4' || input == '5'
  puts 'Have a brilliant idea/platform in mind?'
  sleep 1
  puts '1. Nope. Just want to get started.'
  sleep 1
  puts '2. YES.'

  # Second question
  input = gets.chomp
  answers = %w[1 2]
  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  label = 'learn_things_branch' if input == '1'
  label = 'platform_branch' if input == '2'
end

# Learn things branch start.
if label.eql?('learn_things_branch')
  puts 'I prefer to learn thing...'
  sleep 1
  puts '1. The easy way.'
  sleep 1
  puts '2. The best way.'
  sleep 1
  puts '3. The really hard way'\
       ' (but easer to pick up other languages in the future)'
  sleep 1
  puts '4. The slightly harder way.'

  # Third question
  input = gets.chomp

  answers = (1..4).to_a.to_s

  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  abort 'Python!' if input == '1' || input == '2'

  abort 'C++.' if input == '3'

  if input == '4'
    puts 'Auto or manual car?'
    sleep 1
    puts '1. Auto.'
    sleep 1
    puts '2. Manual'
    sleep 1
  end

  input = gets.chomp

  answers = (1..2).to_a.to_s

  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  abort 'Java!' if input == '1'

  abort 'C.' if input == '2'
end
# Learn things branch end.

# WEB brunch
if 'platform_branch'.eql?(label)
  puts 'Which platform/field?'
  sleep 1
  puts '1. Web.'
  sleep 1
  puts '2. Enterprise.'
  sleep 1
  puts '3. Mobile.'
  sleep 1
  puts '4. 3D/Gaming.'

  input = gets.chomp
  answers = (1..4).to_a.to_s
  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  label = 'web_branch' if input == '1'

  label = 'enterprise_branch' if input == '2'

  label = 'mobile_branch' if input == '3'

  puts 'C++ is you choise!' if input == '4'
end

# Web branch start.
if label.eql?('web_branch')
  puts 'Does your web app provides info in read-time,'\
       ' like twitter?'
  sleep 1
  puts '1. Yes.'
  sleep 1
  puts '2. No'

  input = gets.chomp
  answers = (1..2).to_a.to_s
  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  puts 'Use JAVASCRIPT.' if input == '1'

  label = 'huge_potential_branch' if input == '2'
end
# web branch ends.

# Work platform branch start.
if label.eql?('work_platform_branch')
  puts 'Whitch platform/field?'
  sleep 1
  puts '1. I want to work for big tech companies.'
  sleep 1
  puts "2. Doesn't matter, I just want $$$!"
  sleep 1
  puts '3. Web.'
  sleep 1
  puts '4. Enterprise.'
  sleep 1
  puts '5. Mobile.'
  sleep 1
  puts '6. 3D/Gaming.'

  input = gets.chomp
  answers = (1..6).to_a.to_s
  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  label = 'big_tech_branch' if input == '1'

  puts 'Java is you!' if input == '2'

  label = 'web_work_branch' if input == '3'

  label = 'enterprise_branch' if input == '4'

  label = 'mobile_branch' if input == '5'

  puts 'C++.' if input == '6'
end

if label.eql?('big_tech_branch')
  puts '1. Fasebook ?'
  sleep 1
  puts '2. Google ?'
  sleep 1
  puts '3. Apple ?'
  sleep 1
  puts '4. or Microsoft ?'

  input = gets.chomp
  answers = (1..4).to_a.to_s
  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  puts 'Python!' if input == '1' || input == '2'

  puts 'C.' if input == '3'

  puts 'C#' if input == '4'
end

# Web work platform start.
if label.eql?('web_work_branch')
  puts '1. Front-end (web interface).'
  sleep 1
  puts '2. Back-end ("brain" behind a website)'
  sleep 1

  input = gets.chomp
  answers = (1..2).to_a.to_s
  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  puts 'Use JAVASCRIPT.' if input == '1'

  label = 'work_for_branch' if input == '2'
end

if label.eql?('work_for_branch')
  puts 'I want to work for..'
  sleep 1
  puts '1. Corporate.'
  sleep 1
  puts '2. Startup'

  input = gets.chomp
  answers = (1..2).to_a.to_s
  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  label = 'microsoft_branch' if input == '1'

  label = 'huge_potential_branch' if input == '2'
end

label = 'microsoft_branch' if label.eql?('enterprise_branch')

if label.eql?('microsoft_branch')
  puts 'What do you think about Microsoft?'
  sleep 1
  puts "1. I'm a fan!"
  sleep 1
  puts '2. Not bad.'
  sleep 1
  puts '3. Suck!'

  input = gets.chomp
  answers = (1..3).to_a.to_s
  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  puts 'Try C#.' if input == '1'

  puts 'Java!' if input == '2' || input == '3'
end
# Web work branch end.

# Huge potential branch start.
if label.eql?('huge_potential_branch')
  puts 'Do you want to try something new with huge potential,'\
        ' but less mature?'
  sleep 1
  puts '1. Yes.'
  sleep 1
  puts '2. Not sure.'
  sleep 1
  puts '3. No.'

  input = gets.chomp
  answers = (1..3).to_a.to_s
  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  puts 'Use JAVASCRIPT.' if input == '1'

  label = 'favourite_toy_branch' if input == '2' || input == '3'
end

if label.eql?('favourite_toy_branch')
  puts 'Whitch one is your favourite toy?'
  sleep 1
  puts '1. Lego.'
  sleep 1
  puts '2. Play-Doh.'
  sleep 1
  puts "3. I've an old & ugly toy, but i love it so much!"

  input = gets.chomp
  answers = (1..3).to_a.to_s
  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  puts 'Python!' if input == '1'

  puts 'Ruby. :)' if input == '2'

  puts "Oh..it's PHP." if input == '3'
end
# Huge potential branch end.

# Mobile branch start.
if label.eql?('mobile_branch')
  puts 'Whitch OS?'
  sleep 1
  puts '1. iOS.'
  sleep 1
  puts '2. Android.'

  input = gets.chomp
  answers = (1..2).to_a.to_s
  # Validate input on answer.
  until answers.include?(input)
    puts "#Invalid input: #{input}"
    input = gets.chomp
  end

  puts 'C..' if input == '1'

  puts 'Java!' if input == '2'
end
