# ..
class Route
  attr_reader :stations

  def initialize(stations = [])
    self.stations = stations
  end

  def stations=(stations)
    raise ArgumentError, 'Station must be array' until stations.is_a?
    @stations = stations
  end

  # set first station
  def start=(station)
    raise ArgumentError, 'Start station is null' if station.nil?
    raise ArgumentError, 'Invalid class in station argument' until station.instance_of?(Station)
    @stations.unshift(station)
  end

  # set ending station
  def end=(station)
    raise ArgumentError, 'End station is null' if station.nil?
    raise ArgumentError, 'Invalid class in station argument' until station.instance_of?(Station)
    @stations << station
  end

  # get intermediate stations list
  def intermediate_stations
    @stations.pop.shift
    @stations
  end

  # setter route list
  def add_station(station)
    raise ArgumentError, 'Station is null' if station.nil?
    raise ArgumentError, 'Invalid class in station argument' until station.instance_of?(Station)
    @stations << station
  end

  def show_all
    @stations
  end

  # delete station from route
  def remove(station)
    @stations.delete(station)
  end

  private

  def valid?
    self.stations.nil? || !self.stations.is_a? ? false : true
  end
end
