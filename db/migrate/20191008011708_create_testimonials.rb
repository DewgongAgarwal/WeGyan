class CreateTestimonials < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonials do |t|
      t.integer :i_id
      t.integer :s_id
      t.text :data
    end
  end
end
