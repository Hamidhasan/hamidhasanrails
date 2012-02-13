class CreateLuggages < ActiveRecord::Migration
  def change
    create_table :luggages do |t|
      t.string :description
      t.decimal :weight
      t.belongs_to :passenger

      t.timestamps
    end
    add_index :luggages, :passenger_id
  end
end
