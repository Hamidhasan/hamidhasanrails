class AddIsinterToFlight < ActiveRecord::Migration
  def change
    add_column :flights, :isinter, :boolean

  end
end
