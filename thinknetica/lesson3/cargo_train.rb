require_relative 'train'
require_relative 'cargo_wagon'

# ..
class CargoTrain < Train
  attr_reader :wagons
  attr_reader :type

  # @param [Wagon] wagons
  def initialize(name, type = 'cargo', wagons = [], speed = 0, route = [])
    super
    @wagons = wagons
    @type = type
  end

  # @return [CargoWagon]
  def add_wagon
    @wagons << CargoWagon.new
  end

  # @return [Wagon]
  def delete_wagon
    @wagons.pop
  end
end
