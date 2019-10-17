class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
        t.integer :ids
        t.string :name
        t.string :email
        t.string :phone
        t.text :details
        t.text :links
        t.string :contact
    end
  end
end
