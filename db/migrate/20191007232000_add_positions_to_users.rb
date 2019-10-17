class AddPositionsToUsers < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :positions, :integer, array: true, default: []
  end
end
