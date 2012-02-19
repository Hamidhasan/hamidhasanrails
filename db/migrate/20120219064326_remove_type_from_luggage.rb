class RemoveTypeFromLuggage < ActiveRecord::Migration
  def up
    remove_column :luggages, :type
      end

  def down
    add_column :luggages, :type, :string
  end
end
