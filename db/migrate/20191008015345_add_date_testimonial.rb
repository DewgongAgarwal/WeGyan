class AddDateTestimonial < ActiveRecord::Migration[5.2]
  def change
      add_column :testimonials, :date, :string
  end
end
