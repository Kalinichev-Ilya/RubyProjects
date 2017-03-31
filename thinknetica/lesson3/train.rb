require_relative 'route'

Class Train
  attr_accessor :type
  attr_writer :speed
  attr_reader :route

  def initialize(type, wagons = 1, speed = 0)
    @type = type    
    @wagons = wagons
    @speed = speed
  end
  
  #train speed up
  def speed_up(speed)
    @speed +=speed
  end

 #prints the current train speed
  def show(speed)
    puts "Current speed: #{@speed}"
  end

  #Turn on the brakes
  def brake
    @speed = 0
  end

  #displays the number of wagons on the screen
  def count_wagons
    puts "Number of wagons: #{@wagons}"
  end

  #add wagon
  def add_wagon(count)
    @wagon += count
  end

  #delete wagon
  def delete_wagon(count)
    @wagon -= count
  end

  #add route
  def add_route(route)
    if route.class == Route
      @route = route
    else
      raise InvalidArgument, "The passed argument must belong to the Route class."
    end
  end

  #train rode the route
  def go
    route.each do |station|  
      puts "Train on #{station}"
      sleep 3
    end
  end
end
