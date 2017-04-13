require_relative 'train'

# ...
class Station
  attr_reader :name
  attr_reader :trains

  # @param [String] name
  # @param [Train] trains
  def initialize(name, trains = [])
    self.name = name
    @trains = trains
  end

  # accept block, and do something with trains on station
  # @param [Proc] block
  def do_something!(&block)
    @trains.each do |train|
      block.call(train)
      end
  end

  # @param [Train] train
  # @return [Train] array
  def add_train(train)
    raise ArgumentError, 'Train is null' if train.nil?
    @trains << train
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
    raise ArgumentError, 'Train is null' if train.nil?
    @trains.delete(train)
    puts "Train #{train} move away from station."
  end

  protected

  def name=(name)
    raise ArgumentError, 'Name is null' if name.nil?
    @name = name
  end
end
