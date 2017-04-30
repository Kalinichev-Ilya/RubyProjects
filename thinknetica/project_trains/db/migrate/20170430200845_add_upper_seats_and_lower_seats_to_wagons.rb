class AddUpperSeatsAndLowerSeatsToWagons < ActiveRecord::Migration[5.0]
  def change
    add_column :wagons, :upper_seats, :integer
    add_column :wagons, :lower_seats, :integer
  end
end
