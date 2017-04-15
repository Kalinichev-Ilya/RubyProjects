require_relative 'cargo_train'
require_relative 'passenger_train'
require_relative 'route'
require_relative 'station'
require_relative 'cargo_wagon'
require_relative 'passenger_wagon'

puts 'Hello! This is a simulator of the railway station.'
puts 'Press Enter to continue, or type \'exit\' to exit'

input = gets.chop
abort('Goodbye!') if input == 'exit'

def menu
  puts '1. Create station'
  puts '2. Create train'
  puts '3. Add wagon for train'
  puts '4. Delete wagon from train'
  puts '5. Add train on station'
  puts '6. Show station list'
  puts '7. Show list of trains on station'
end

def create_station
  puts 'Enter station name:'
  name = gets.chop
  station = Station.new(name)
  @stations << station
  puts "Station #{station.name} was created\n\n"
end

def create_cargo_train
  puts 'Enter train name: '
  name = gets.chop
  train = {}
  train[name.to_sym] = CargoTrain.new(name)
  @trains << train
  puts "Train #{train[name.to_sym].name} was created\n\n"
end

def create_passenger_train
  puts 'Input train name: '
  name = gets.chop
  train = {}
  train[name.to_sym] = PassengerTrain.new(name)
  @trains << train
  puts "Train #{train[name.to_sym].name} was created\n\n"
end

def add_wagon
  puts 'Enter the name of the train which to add the wagon'
  name = gets.chop
  @trains.each do |train|
    train.each do |key, params|
      next unless key == name.to_sym
      params.add_wagon
      params.count_wagons
      puts "\n"
    end
  end
end

def delete_wagon
  puts 'Enter the name of the train for delete the wagon'
  name = gets.chop
  @trains.each do |train|
    train.each do |key, params|
      next unless key == name.to_sym
      params.delete_wagon
      params.count_wagons
      puts "\n"
    end
  end
end

# @return [Train]
def find_train(name)
  @trains.each do |train|
    train.each do |key, _params|
      next unless key == name.to_sym
      train
    end
  end
end

# @return [Station]
def find_station(name)
  @stations.each do |station|
    if station.name == name
      station
    else
      puts 'Station not found!'
    end
  end
end

def add_train_on_station
  puts 'Enter train name:'
  train_name = gets.chop

  train = find_train(train_name)

  puts 'Enter station name:'
  station_name = gets.chop
  station = find_station(station_name)
  station.add_train(train)
  puts "Train #{train} added on the station #{station.name}"
end

def show_list_of_trains
  puts 'Enter station name'
  name = gets.chop
  @stations.each do |station|
    next unless station.name == name
    puts "Station #{station.name}"
    list = station.train_list
    list.each { |train| puts "Train #{list.index(train)}: #{train}\n\n" }
  end
end

@stations = []
@trains = []
loop do
  menu
  case gets.chop
  when 'exit'
    puts 'Goodbye!'
    break
  when '1'
    # puts '1. Create station'
    create_station
  when '2'
    # puts '2. Create train'
    puts "Enter train type \n 1. Cargo train \n 2. Passenger train"
    input = gets.chop
    create_cargo_train if input == '1'
    input == '2' ? create_passenger_train : 'This type does not exist'
  when '3'
    add_wagon
  when '4'
    delete_wagon
  when '5'
    add_train_on_station
  when '6'
    @stations.each { |station| puts "Station #{station.name}" }
  when '7'
    show_list_of_trains
  else
    puts 'Enter numbers 1..7 or \'exit\''
  end
end
