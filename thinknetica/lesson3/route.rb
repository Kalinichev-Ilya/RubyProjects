class Route
attr_reader :start
attr_reader :end

def initialize(stations = [])
  @stations = stations
  @start = stations.first
  @end = stations.pop
end

#set first station
def start=(station)
  @stations.unshift(station)
end

 # set ending station
def end=(station)
  @stations << station
end

 # get intermediate stations list
def intermediate_stations
  @stations.pop.shift
  @stations
end

#setter route list
  def add_station(station)
    if @stations.include?(station)
      raise StationAlreadyExist, "This station is already on the route list"
    else
      @stations << station
    end
  end

#print station list
  def show
    @stations.each{|station| puts "Station: #{station}"}
  end

  #delete station from route
  def remove(station)
    if self.station.include?(station)
      raise StationNotFoundError, "This station is not in the list"
    else
      self.stations.delete(station)
    end
  end

end
