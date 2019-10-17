class AddIdsToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :ids, :integer
  end
end
