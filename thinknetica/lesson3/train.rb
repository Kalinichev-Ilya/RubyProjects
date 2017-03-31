require_relative 'route'

Class Train
  attr_accessor :type
  attr_accessor :speed
  attr_accessor :wagons
  attr_accessor :route

  def initialize(type, speed = 0, wagons = 1)
    @type = type
    @speed = speed
    @wagons = wagons
  end
  
  #train speed up
  def speed_up(speed)
    self.speed +=speed
  end

 #prints the current train speed
  def show(speed)
    puts "Current speed: #{self.speed}"
  end

  #Turn on the brakes
  def brake
    self.speed = 0
  end

  #displays the number of wagons on the screen
  def count_wagons
    puts "Number of wagons: #{@wagons}"
  end

  #add wagon
  def add_wagon(count)
    self.wagon += count
  end

  #delete wagon
  def delete_wagon(count)
    self.wagon -= count
  end

  @route = []
  #add route
  def add_route(route)
    @route = route
  end

  #train rode the route
  def go
    route.each do |station|  
      puts "Train on #{station}"
      sleep 3
    end
  end
end
