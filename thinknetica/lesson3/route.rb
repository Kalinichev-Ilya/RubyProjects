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

  def station?(obj)
    obj.instance_of?(Station)
  end

  # set first station
  def start=(station)
    raise ArgumentError, 'Start station is null' if station.nil?
    until station?(station)
      raise ArgumentError, 'Invalid class in station argument'
    end
    @stations.unshift(station)
  end

  # set ending station
  def end=(station)
    raise ArgumentError, 'End station is null' if station.nil?
    until station?(station)
      raise ArgumentError, 'Invalid class in station argument'
    end
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
    until station?(station)
      raise ArgumentError, 'Invalid class in station argument'
    end
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
    stations.nil? || !stations.is_a? ? false : true
  end
end
