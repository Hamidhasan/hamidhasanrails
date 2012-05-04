class AddAdminToPassengers < ActiveRecord::Migration
  def change
    add_column :passengers, :admin, :boolean

  end
end
