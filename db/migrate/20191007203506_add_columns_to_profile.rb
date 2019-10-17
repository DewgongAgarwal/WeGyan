class AddColumnsToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :name, :string
    add_column :profiles, :details, :text
    add_column :profiles, :contact, :string
    add_column :profiles, :email, :string
    add_column :profiles, :links, :string
    add_column :profiles, :text, :string
  end
end
