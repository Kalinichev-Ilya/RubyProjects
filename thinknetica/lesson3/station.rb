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

  def train_list
    @trains
  end

  # @param [String] type
  def train_list_by(type)
    count = 0
    result = []
    @trains.each do |train|
      if train.type == type
        count += 1
        result << train
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
