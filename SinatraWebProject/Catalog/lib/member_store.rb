require 'yaml/store'

class MemberStore
  def initialize(file_name)
    @store = YAML::Store.new(file_name)
  end

  def save(member)
    @store.transaction do
      unless member.id
        highest_id = @store.roots.max || 0
        member.id = highest_id + 1
      end
      @store[member.id] = member
    end
  end

  def all
    @store.transaction do
      @store.roots.map { |id| @store[id] }
    end
  end

  def find(id)
    @store.transaction do
      @store[id]
    end
  end
end
