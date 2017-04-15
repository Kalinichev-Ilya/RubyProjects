argument = ARGV[0]

if !ARGV[0].nil?

  if Gem.win_platform?
    argument = argument.encode(ARGV[0].encoding, 'cp1251').encode('UTF-8')
  end

  if argument == 'Stupid'
    puts 'Nope'
  else
    puts 'Hello!'
  end
else
  puts 'Argument is nil'
end
