class DropProfiles < ActiveRecord::Migration[5.2]
  def up
      drop_table :profiles
  end
end
