require_relative 'route'
require_relative 'errors'

# ..
class Train
  attr_reader :route
  attr_reader :name

  @trains = {}

  # @param [Wagon] wagons
  # @param [String] speed
  def initialize(number, type, wagons = 1, speed = 0, route = []) # TODO switch @name on @number
    self.name = number
    @type = type # TODO: Exceptions & validate
    @wagons = wagons
    self.speed = speed
    self.route = route
    remember
  end

  def route=(route)
    raise ArgumentError, 'Route must be an array' unless route.is_a? || !route.nil?
    @route = route
  end

  def name=(name)
    raise ArgumentError, 'Train name must be a number' if name.nil? || /^\d+$/.match(name)
    @name = name
  end

  def speed=(speed)
    raise ArgumentError, 'Speed must be a number' if speed.nil? || /^\d+$/.match(speed)
    @speed = speed
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

  def remember
    @trains = { @name.to_sym => [@name, @type, @wagons, @speed, @route] }
  end

  protected

  def not_move?
    @speed > 0
  end
end