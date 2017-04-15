require_relative 'route'

# ..
class Train
  attr_reader :route
  attr_reader :name
  attr_reader :speed

  @trains = {}

  # @param [Wagon] wagons
  # @param [String] speed
  # TODO switch @name on @number
  def initialize(number, type, wagons = 1, speed = 0, route = [])
    self.name = number
    @type = type # TODO: Exceptions & validate
    @wagons = wagons # TODO: wagons to array
    self.speed = speed
    self.route = route
    remember
  end

  def route=(route)
    unless route.is_a? || !route.nil?
      raise ArgumentError, 'Route must be an array'
    end
    @route = route
  end

  def name=(name)
    if name.nil? || /^(\d|[a-zA-Z]){3}-?(\d|[a-zA-Z]){2}$/.match(name)
      raise ArgumentError, 'Train name is null, or invalid format'
    end
    @name = name
  end

  def speed=(speed)
    if speed.nil? || /^\d+$/.match(speed)
      raise ArgumentError, 'Speed is null, or not number'
    end
    @speed = speed
  end

  # @param [String] speed
  def speed_up(speed)
    @speed += speed
  end

  def brakes_on
    @speed = 0
  end

  def count_wagons
    @wagons.size
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

  # TODO: testing
  def find(name)
    @trains.each { |number, train| number == name ? train : nil }
  end

  def remember
    @trains = {
      @name.to_sym => [@name, @type, @wagons, @speed, @route]
    }
  end

  # accept block, and do something with wagons this train
  def do_something!
    @wagon.each do |wagon|
      yield(wagon)
    end
  end

  protected

  def not_move?
    @speed > 0
  end
end
