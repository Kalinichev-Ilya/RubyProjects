require_relative 'errors'
require_relative 'train'

class Station
  attr_reader :name

  def initialize (name, trains = [])
    @name = name
    @trains = trains
  end

  #set train into array trains
  def add_train(train)
    if @trains.include?(train)
      raise TrainAlreadyExist, "This train #{train} is already on the station".      
    else
      @trains << train if train.class == Train
    end
  end

  #print list of "trains on the station"
  def train_list
    trains.each {|train| puts "#Train: {train}, #{train.type} type"}
  end

  #print list of trains by type
  def train_list_by_type(type)
    puts "#{type}:"
    count = 0
    @trains.each do |train| 
      if train.type == type 
        count += 1
        puts "Train #{count}: #{train}"
      end
    end
    puts "Trains of this type are not found." if count == 0
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
