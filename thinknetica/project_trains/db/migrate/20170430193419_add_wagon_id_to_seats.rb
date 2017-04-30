class AddWagonIdToSeats < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :seats, :wagon
  end
end
