require_relative 'route'
require_relative 'errors'

# ..
class Train
  attr_writer :speed
  attr_accessor :route
  attr_accessor :name

  # @param [Wagon] wagons
  # @param [String] speed
  def initialize(name, type, wagons = 1, speed = 0, route = [])
    @name = name
    @wagons = wagons
    @speed = speed
    @route = route
    @type = type
  end

  # @param [String] speed
  def speed_up(speed)
    @speed += speed
  end

  def show_speed
    puts "Current speed: #{@speed}"
  end

  def brakes_on
    @speed = 0
  end

  def count_wagons
    puts "Number of wagons: #{@wagons.size}"
  end

  # add wagon
  def add_wagon
    @wagon += 1 if not_move?
  end

  # delete wagon
  def delete_wagon
    @wagon -= 1 if not_move?
  end

  # train rode the route
  def go
    route.each do |station|
      puts "Train on #{station}"
      sleep 3
    end
  end

  private

  def not_move?
    @speed > 0
  end
end