# ..
class RailwayStation
  def all(stations)
    stations.each { |station| puts "Station #{station.name}" }
  end
end