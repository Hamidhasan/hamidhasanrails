class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :arrival
      t.datetime :arrival_time
      t.string :departure
      t.datetime :departure_time
      t.belongs_to :passenger

      t.timestamps
    end
    add_index :flights, :passenger_id
  end
end
