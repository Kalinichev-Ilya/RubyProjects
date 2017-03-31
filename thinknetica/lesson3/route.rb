class Route

  attr_accessor :start
  attr_accessor :end
  attr_reader :stations

#setter route list
  def stations=(station)
    if self.stations.include?(station)
      raise StationAlreadyExist, "This station is already on the route list"
    else
      self.stations < station
    end
  end

  #delete station from route
  def remove(station)
    if self.station.include?(station)
      raise StationNotFoundError, "This station is not in the list"
    else
      self.stations.delete(station)
    end
  end

  #print station list
  def show
    puts "Station start: #{start}"
    self.stations. each {|station| puts "Station: #{station}"}
    puts "Station end: #{end}"
  end
end
