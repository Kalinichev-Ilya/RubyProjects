require_relative 'route'
require_relative 'errors'

# ..
class Train
  attr_writer :speed
  attr_accessor :route
  attr_accessor :name

  @trains = {}

  # @param [Wagon] wagons
  # @param [String] speed
  def initialize(number, type, wagons = 1, speed = 0, route = []) # TODO switch @name on @number
    @name = number
    @wagons = wagons
    @speed = speed
    @route = route
    @type = type
    remember
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

  def add_wagon
    @wagon += 1 if not_move?
  end

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

  # TODO testing
  def find(name)
    @trains.each { |number, train| number == name ? train : nil }
  end

  protected
  def not_move?
    @speed > 0
  end

  def remember
    @trains[number] = Train.new(@number, @type, @speed, @route, @type)
  end
end