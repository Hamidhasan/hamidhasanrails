class AddTypeToLuggage < ActiveRecord::Migration
  def change
    add_column :luggages, :type, :string

  end
end
