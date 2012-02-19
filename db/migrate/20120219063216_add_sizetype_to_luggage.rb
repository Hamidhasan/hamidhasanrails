class AddSizetypeToLuggage < ActiveRecord::Migration
  def change
    add_column :luggages, :sizetype, :string

  end
end
