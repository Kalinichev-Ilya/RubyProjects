require_relative 'errors'
require_relative 'train'

class Station
  attr_accessor :name
  attr_reader :trains  

  initialize (name)
    @name=name
  end


  #set train into array trains
  @trains = []
  @train = Train.new
  
  def train=(train)
    @train = train
    if !@trains.include?(train)
      @trains << train
    else
      raise TrainAlreadyExist, "This train #{train} is already on the station".
    end
  end

  #print list of "trains on the station"
  def train_list
    trains.each {|train| puts "#Train: {train}, #{train.type} type"}
  end

  #print list of trains by type
  def traint_list_by_type(type)
    puts "#{type}:"

    count = 0
    #trains = [{train1, type}, {train1, type}..]
    @trains.each do |train|
      train.each do |train_name, type_value|
        if type_value == type
          count +=1
          puts "Train #{count}: #{train_name}"
        end
      end
     else
      raise  TrainNotFound, "Trains not found."
    end
  end

  #Send train from the station
  def move_away(train)
    if @trains.include?(train)
      puts "Train #{train} mowe away from station."
      trains.delete(train)
    else
      raise TrainNotFound, "This train is no longer at the station."
  end

end
