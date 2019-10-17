class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :i_id
      t.integer :s_id
      t.text :description
      t.integer :hrs_per_week
      t.string :timings

      t.timestamps
    end
  end
end
