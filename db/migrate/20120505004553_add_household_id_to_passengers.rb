class AddHouseholdIdToPassengers < ActiveRecord::Migration
  def change
    add_column :passengers, :household_id, :integer
    add_index :passengers, :household_id
  end
end
