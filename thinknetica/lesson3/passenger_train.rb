require_relative 'train'
require_relative 'passenger_wagon'

# ..
class PassengerTrain < Train
attr_reader :wagons
attr_reader :type

# @param [Wagon] wagons
def initialize(name, type = 'passenger', wagons = [], speed = 0, route = [])
  super
  @wagons = wagons
  @type = type
end

# @return [PassengerWagon]
def add_wagon
  @wagons << PassengerWagon.new
end

# @return [Wagon]
def delete_wagon
  @wagons.pop
end
end
