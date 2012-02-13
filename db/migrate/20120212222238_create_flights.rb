class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :departure
      t.datetime :departuredate
      t.string :arrival
      t.datetime :arrivaldate
      t.belongs_to :passenger

      t.timestamps
    end
  end
end
