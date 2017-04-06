require_relative 'train'

# ...
class Station
  attr_reader :name

  # @param [String] name
  # @param [Train] trains
  # @return [Station]
  def initialize(name, trains = [])
    @name = name
    @trains = trains
  end

  # @param [Train] train
  # @return [Train] array
  def add_train(train)
    @trains << train
  end

  def print_train_list
    @trains.each { |train| puts "#Train: {train}, #{train.type} type" }
  end

  # @param [String] type
  def train_list_by(type)
    puts "#{type}:"
    count = 0
    @trains.each do |train|
      if train.type == type
        count += 1
        puts "Train #{count}: #{train}"
      end
    end
    puts 'Trains of this type are not found.' if count.zero?
  end

  # @param [Train] train
  def move_away(train)
    @trains.delete(train)
    puts "Train #{train} mowe away from station."
  end
end
