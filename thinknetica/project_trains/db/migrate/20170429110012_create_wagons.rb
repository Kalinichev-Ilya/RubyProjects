class CreateWagons < ActiveRecord::Migration[5.0]
  def change
    create_table :wagons do |t|
      t.string :type

      t.timestamp
    end
  end
end
