class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
