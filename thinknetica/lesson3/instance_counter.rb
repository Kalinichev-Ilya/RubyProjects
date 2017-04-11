# ..
module InstanceCounter

  def initialize
    register_instance
  end

  @count
  def self.instances
    @count
  end

  protected

  def register_instance
    @count += 1
  end
end