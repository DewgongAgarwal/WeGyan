class ChangeContactInProfiles < ActiveRecord::Migration[5.2]
  def change
      rename_column :profiles, :contact, :complete
      change_column :profiles, :complete, :boolean
  end
end
