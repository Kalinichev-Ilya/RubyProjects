require_relative 'route'
require_relative 'errors'

# ..
class Train
  attr_writer :speed
  attr_accessor :route

  # @param [Wagon] wagons
  # @param [String] speed
  def initialize(wagons = 1, speed = 0, route = [])
    @wagons = wagons
    @speed = speed
    @route = route
  end

  # train speed up
  # @param [String] speed
  def speed_up(speed)
    @speed += speed
  end

  # prints the current train speed
  def show_speed
    puts "Current speed: #{@speed}"
  end

  # Turn on the brakes
  def brake
    @speed = 0
  end

  # displays the number of wagons on the screen
  def count_wagons
    puts "Number of wagons: #{@wagons}"
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