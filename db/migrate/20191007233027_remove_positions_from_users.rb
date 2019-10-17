class RemovePositionsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :positions, :string
  end
end
