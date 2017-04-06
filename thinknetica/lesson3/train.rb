require_relative 'route'
require_relative 'errors'

class Train
  attr_writer :speed
  attr_reader :route

  def initialize(wagons = 1, speed = 0)   
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
  def add_wagon
    if not_move?
      @wagon += 1
    else raise ChangeWagonsException ,"You can't add wagon on the speed"
    end
  end

  #delete wagon
  def delete_wagon
    if not_move?
      @wagon -= 1
    else
      raise ChangeWagonsException ,"You can't delete wagon on the speed"
    end
  end

  #add route
  def route=(route)
    @route = route
  end

  #train rode the route
  def go
    route.each do |station|  
      puts "Train on #{station}"
      sleep 3
    end
  end

  private 

  def not_move?
    if self.speed > 0
      false
    else
      true
    end
  end

end
